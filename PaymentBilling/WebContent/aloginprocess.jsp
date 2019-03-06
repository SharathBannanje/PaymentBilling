<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%--@page import="org.omg.CORBA.PUBLIC_MEMBER"--%>
<%
		//String username=getServletContext().getInitParameter("Username");
		//String password=getServletContext().getInitParameter("Password");
		 String username="admin";
		 String password="admin";
		
if(request.getParameter("username").equalsIgnoreCase(username)&& request.getParameter("userpass").equalsIgnoreCase(password))
{
session.setAttribute("username","Admin");
session.setAttribute("islogin","Login Successful..!");
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
<% 
}

else{
request.setAttribute("Error","Sorry! Username or Password Error. plz Enter Correct Detail");
session.setAttribute("Loginmsg","plz sign in first");
%>
<jsp:forward page="admin.jsp"></jsp:forward>
<% 
}
%>

