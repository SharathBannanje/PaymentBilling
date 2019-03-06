<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{
String query=request.getParameter("query");
String email=request.getParameter("email");
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");

String dbURL = "jdbc:sqlserver://localhost\\sqlexpress;user=PayBillUser;password=Pass123";
Connection con = DriverManager.getConnection(dbURL);

PreparedStatement ps=con.prepareStatement("insert into PaymentBillingDb.dbo.query values(?,?)");
ps.setString(1,query);
ps.setString(2,email);
int s=ps.executeUpdate();
con.close();
request.setAttribute("msg","Query submitted successfully");

}catch(Exception e){e.printStackTrace();}
%>
<jsp:forward page="contactus.jsp"></jsp:forward>