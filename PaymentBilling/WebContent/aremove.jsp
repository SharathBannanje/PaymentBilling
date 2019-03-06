<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");

Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String dbURL = "jdbc:sqlserver://localhost\\sqlexpress;user=PayBillUser;password=Pass123";
Connection con = DriverManager.getConnection(dbURL);

PreparedStatement ps=con.prepareStatement("delete from PaymentBillingDb.dbo.payregister where id ='"+n+"'");
ps.executeUpdate();
con.close();
request.setAttribute("msg","Record Has been Successfully Deleted");
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
<jsp:forward page="ahome.jsp"></jsp:forward>