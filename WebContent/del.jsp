<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" pageEncoding="utf-8"%>
<html>
<head>
<title>删除图书信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background: url(tiankong.png) ; background-size:100% 100% ; background-attachment: fixed">
	<%
	request.setCharacterEncoding("utf-8");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC&useSSL=false", "root", "123456");
	Statement stmt=con.createStatement();
	String id=request.getParameter("id");
	int i=stmt.executeUpdate("delete from student where num="+id);
	if(i==1)
	{
		out.println("<h2>删除成功！</h2><br/>");
	}
		else
	{
		out.println("<h2>删除失败！</h2><br/>");
	}
	out.println("<a href='index.jsp'>返回首页</a>");
	stmt.close();
	con.close();

	%>
</body>
</html>
