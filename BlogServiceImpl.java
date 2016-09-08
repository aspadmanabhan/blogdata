package com.blog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	 BlogDAO dao;
	public Blog addblog(Blog b) {
		// TODO Auto-generated method stub
		return dao.addblog(b);
	}

	public Blog editblog(Blog b) {
		// TODO Auto-generated method stub
		return dao.editblog(b);
	}

	public Blog deleteblog(Blog b) {
		// TODO Auto-generated method stub
		return dao.deleteblog(b);
	}

	public List getAllBlogs() {
		// TODO Auto-generated method stub
		return dao.getAllBlogs();
	}
	public List getSingleBlog(int id)
	{
		return dao.getSingleBlog(id);
	}
 public List getUser(String user,String password)
 {
	return  dao.getUser(user,password);
 }

public USER_AUTHENTICATION adduser(USER_AUTHENTICATION user) {
	// TODO Auto-generated method stub
	return dao.adduser(user);
}

public USER_AUTHORIZATION authorizeuser(USER_AUTHORIZATION ua) {
	// TODO Auto-generated method stub
	return dao.authorizeuser(ua);
}

public List getBlogforediting(String user) {
	// TODO Auto-generated method stub
	return dao.getBlogForEditing(user);
}

}
