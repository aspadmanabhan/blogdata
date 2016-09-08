package com.blog;

import java.util.List;

public interface BlogService {
	public Blog addblog(Blog b);
	public Blog editblog(Blog b);
	public Blog deleteblog(Blog b);
	public List getAllBlogs();
	
    public List getSingleBlog(int id);
    public List getUser(String user,String password);
  public List getBlogforediting(String user);
	public USER_AUTHENTICATION adduser(USER_AUTHENTICATION user);
	public USER_AUTHORIZATION authorizeuser(USER_AUTHORIZATION ua);
}
