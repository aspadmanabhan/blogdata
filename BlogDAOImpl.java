package com.blog;

import java.util.List;

import org.hibernate.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class BlogDAOImpl implements BlogDAO{

	@Autowired
	SessionFactory ctx;
	@Transactional
	public Blog addblog(Blog b) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.saveOrUpdate(b);
		session.flush();
		return b;
	}

	public Blog editblog(Blog b) {
		Session session=ctx.openSession();
		session.saveOrUpdate(b);
		session.flush();
		return b;
		// TODO Auto-generated method stub
		
	}

	public Blog deleteblog(Blog b) {
		Session session=ctx.openSession();
		session.delete(b);
		session.flush();
		return b;
		// TODO Auto-generated method stub
		
	}

	public List getAllBlogs() {
		Session session=ctx.openSession();
		Query q=	 	session.createQuery("from Blog");
				return q.list();
		// TODO Auto-generated method stub
	}

	public List getSingleBlog(int id)
	{
		Session session=ctx.openSession();
		Query q=	 	session.createQuery("from Blog  b where b.blogId="+id);
				return q.list();
	}
	public List getUser(String user,String password)
	{
		Session session=ctx.openSession();
		Query q=	 	session.createQuery("from USER_AUTHENTICATION  b where b.USER_NAME='"+user+"' and b.PASSWORD='"+password+"'");
				return q.list();
	}
	public USER_AUTHENTICATION adduser(USER_AUTHENTICATION user)
	{
		Session session=ctx.openSession();
		session.saveOrUpdate(user);
		session.flush();
		return user;
	}

	public USER_AUTHORIZATION authorizeuser(USER_AUTHORIZATION ua) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.saveOrUpdate(ua);
		session.flush();
		return ua;
	}

	public List getBlogForEditing(String username) {
		Session session=ctx.openSession();
		Query q=	 	session.createQuery("from Blog  b where b.username='"+username+"'");
				return q.list();

		// TODO Auto-generated method stub
		
	}

	
}
