<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

//try{

PreparedStatement ps=con.prepareStatement("select * from PaymentBillingDb.dbo.payregister");
//ps.setString(1,n);
out.print("<br> Hello");
ResultSet rs=ps.executeQuery();
//out.print("<br> getFetchSize = " + rs.getFetchSize());

int size = 0;
while(rs.next()){
	out.print("<br>" + rs.getString(1) + " : " + rs.getString(2));
	size++;
}
out.print("<br> Total count = " + size);

con.close();
//}catch(Exception e){e.printStackTrace();}
%>	