package com.blog;

import javax.websocket.server.*;

import java.io.IOException;
import java.util.*;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.websocket.*;

@ServerEndpoint(value="/websocket",configurator=ServletAwareConfig.class)
public class ChatServer {
	class  DataInfo
	{
		Session s;
		String user;
		DataInfo(Session s,String user)
		{
			this.s=s;
			this.user=user;
		}
	}
	static Set<DataInfo> sessionlist;//=new CopyOnWriteArraySet<Session>();
	static List<String> userlist=new LinkedList<String>();
  static  Thread t;
  private  EndpointConfig config;
  static void sendToAll(final int i)
  {
t=new Thread(){
		  
		  public void run()
		  {
			
				 for(DataInfo s:sessionlist)
				 {
					 System.out.println(s.s.getId());
					 try{
					s.s.getBasicRemote().sendText(i+"is connected");
					 }
					 catch(Exception e)
					 {
						 System.out.println(e);
					 }
				 }
				 try{
				 Thread.sleep(1000);
				 }
				 catch(Exception e)
				 {
					// System.out.println(e);
				 }
				 }
		  
		  
	  };
	  t.start();
  }
  static
  {
	  sessionlist=new CopyOnWriteArraySet<DataInfo>();
	  
  }

	@OnMessage
    public void onMessage(String message, Session session) throws IOException,
            InterruptedException {
		
		
		 System.out.println(message);
		  for(DataInfo s:sessionlist)
		  {
			  
			  System.out.println("hay");
		
			  s.s.getBasicRemote().sendText(message);
			  
			  }
    
      
      
        	
    }
 
    @OnOpen
    public void onOpen(Session session,EndpointConfig c) {
    	 this.config=c;
    	

    	 HttpSession httpSession = (HttpSession) config.getUserProperties().get("httpSession");
         ServletContext servletContext = httpSession.getServletContext();
    	
         String user=(String)httpSession.getAttribute("user");
         userlist.add(user);
         System.out.println(userlist);
        DataInfo obj=new DataInfo(session,user);
        sessionlist.add(obj);
         for(DataInfo s:sessionlist)
         {
        	 try{
        	 s.s.getBasicRemote().sendText("available-->,"+userlist);
        	 }
        	 catch(Exception e)
        	 {
        		 System.out.println(e);
        	 }
        	 }
    	System.out.println("connected "+user);
    }
 
    @OnClose
    public void onClose() {
 
    }
}
