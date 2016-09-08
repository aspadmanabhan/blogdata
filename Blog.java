package com.blog;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.blog.*;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Blog {
	@Id
	@GeneratedValue
	private int blogId;
	
	private String username;
	 public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	@OneToMany
    private java.util.Collection<Comment> commentList;
	
   
	public java.util.Collection<Comment> getCommentList() {
		return commentList;
	}
	public void setCommentList(java.util.Collection<Comment> commentList) {
		this.commentList = commentList;
	}
	
		private String blogdata;
	public int getBlogId() {
		return blogId;
	}
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}

	
	public String getBlogdata() {
		return blogdata;
	}
	public void setBlogdata(String blogdata) {
		this.blogdata = blogdata;
	}
	public String toString()
	{
		return username+"----->"+blogdata;
	}

}
