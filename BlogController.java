package com.blog;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.security.core.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BlogController {
	{
		System.out.println("controller");
	}
	@Autowired
	BlogService service;

	@RequestMapping("/")
	public ModelAndView showLogin()
	{
		System.out.println("Login");
		return new ModelAndView("Login");
	}
	@RequestMapping("/Blog")
	public ModelAndView showblog()
	{
		return new ModelAndView("Blog");
	}

	@RequestMapping("/home")
	public ModelAndView showhome(HttpServletRequest req,HttpServletResponse res,Principal p)
	{
	     String name=p.getName();
	 
	
		ModelAndView obj=new ModelAndView("home");
		obj.addObject("user",name);
		return obj;
	}
	@RequestMapping("/registration")
	public ModelAndView showregistermethod()
	{
		return new ModelAndView("registration");
	}

	
	@RequestMapping("/Calendar")
	public ModelAndView showcalendar()
	{
		return new ModelAndView("Calendar");
	}
	@RequestMapping("/edit")
	public ModelAndView editblogs(Principal p)
	{
	java.util.List lst=service.getBlogforediting(p.getName());
	            	
		return new ModelAndView("edit").addObject("bloglist",lst);
	}
	@ModelAttribute("add")
	public Blog addblog()
	{
		return new Blog();
	}
	
	@ModelAttribute("edit")
	public Blog editblog()
	{
		return new Blog();
	}
	@RequestMapping("/addblog")
	public ModelAndView showaddblog(Principal p)
	{
		
		return new ModelAndView("addblog").addObject("username",p.getName());
	}
	@RequestMapping(value="/addblog", method=RequestMethod.POST)
	public @ResponseBody String addMyBlog(@ModelAttribute("add") @Valid Blog b,BindingResult c)
	{
		service.addblog(b);
		return "blog published successfully";
	}
	@RequestMapping(value="/edit", method=RequestMethod.POST)
	public @ResponseBody String editMyBlog(@ModelAttribute("edit") @Valid Blog b,BindingResult c)
	{
		service.editblog(b);
		return "blog published successfully";
	}
	@ModelAttribute("delete")
	public Blog deleteblog()
	{
		return new Blog();
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public @ResponseBody String deletePc1(@RequestParam("id")int id)
	{

		java.util.List<Blog> list=service.getSingleBlog(id);
	       Blog b=list.get(0);
	 service.deleteblog(b);
	
		return "deleted Successfully";
		
	}
	@RequestMapping("/room")
	public ModelAndView getroom(Principal p,HttpServletRequest req)
	{
		req.getSession().setAttribute("user", p.getName());
		
		return new ModelAndView("room").addObject("roomuser",p.getName());
	}

	@ModelAttribute("register")
	public USER_AUTHENTICATION getregister()
	{
		return new USER_AUTHENTICATION();
	}
	@RequestMapping("/viewblog")
	public ModelAndView viewblog()
	{
		java.util.List bloglist=service.getAllBlogs();
		return new ModelAndView().addObject("allblog",bloglist);
	}
@RequestMapping(value="/registration" ,method=RequestMethod.POST)
public @ResponseBody String registeruser(@ModelAttribute("register") USER_AUTHENTICATION user)
{
	user.setENABLED(true);
	 service.adduser(user);
   USER_AUTHORIZATION ua=new USER_AUTHORIZATION();
   ua.setROLE("ROLE_USER");
   ua.setUSER_ID(user.getUSER_ID());
   service.authorizeuser(ua);
	return "user added successfully";
}
@RequestMapping("/Logout")
public ModelAndView logout(HttpServletRequest req,HttpServletResponse res)
{
	try{
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
       new SecurityContextLogoutHandler().logout(req, res, auth);
         HttpSession session=req.getSession(false);
         if(session!=null)
         {
         	 session.invalidate();
           System.out.println("session invalidated");
           }
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
        	 ModelAndView obj=new ModelAndView("Login");
		return obj;
}
	
}
