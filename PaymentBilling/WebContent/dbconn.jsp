<%@ page import="java.sql.*" %>
<%
Connection con = null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
// **** Local host - from local machine ****
//String dbURL = "jdbc:sqlserver://localhost\\sqlexpress;user=PayBillUser;password=Pass123";
//String dbURL = "jdbc:sqlserver://10.16.33.178\\sqlexpress;user=PayBillUser;password=Pass123";

// **** Docker db instance from local machine tomcat (http://localhost:8081/PaymentBilling) ****
//String dbURL = "jdbc:sqlserver://10.16.33.178:1435;user=SA;password=HappyNew@123";

//**** Docker db instance from docker compose tomcat instance ****
String dbURL = "jdbc:sqlserver://10.16.33.178:1435;user=SA;password=HappyNew@123";
//String dbURL = "jdbc:sqlserver://mymssql:1435;user=SA;password=HappyNew@123"; ** will not work
//String dbURL = "jdbc:sqlserver://localhost:1435;user=SA;password=HappyNew@123"; ** will not work
con = DriverManager.getConnection(dbURL);
%>