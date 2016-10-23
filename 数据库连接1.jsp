<pre class="html" name="code"><%@ page import="java.io.*"%>   
  
<%@ page import="java.util.*"%>   
  
<%@ page import="java.sql.*"%>   
  
<%@ page contentType="text/html; charset=GB2312" %>   
  
<html>   
  
<head>   
  
<title>DbJsp.jsp</title>   
  
</head>   
  
<body>   
  
<%   
  
String username=request.getParameter("Username");  
  
String pwd=request.getParameter("Pwd");  
  
Connection con = null;   
  
try{   
  
Class.forName("com.mysql.jdbc.Driver");   
  
String dbUrl = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=GB2312";   
  
String dbUser = "root";   
  
String dbPwd = "123";   
  
String sql="select * from  admin where admin='"+username+"'and pwd='"+pwd+"'";  
  
con = DriverManager.getConnection(dbUrl,dbUser,dbPwd);   
  
out.print("已连接5。。。。。");   
  
Statement stmt=con.createStatement();   
  
ResultSet rs=stmt.executeQuery(sql); //执行查询  
  
if(rs.next())  
  
{  
  
response.sendRedirect("index.jsp");  
  
  
  
}   
  
else  
  
{  
  
response.sendRedirect("Login.jsp");  
  
  
  
}  
  
stmt.close();   
  
con.close();   
  
  
  
}  
  
  
  
catch(Exception ex)   
  
{   
  
out.print("连接失败！！<br>"+ex.toString());   
  
}   
  
%>   
  
</body>   
  
</html></pre>  