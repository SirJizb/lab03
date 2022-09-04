<%@ page import="java.sql.*" pageEncoding="utf-8" errorPage="error.jsp"%>
<html>
<head>
<title>修改完成</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background: url(tiankong.png) ; background-size:100% 100% ; background-attachment: fixed">
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String stunum =  request.getParameter("stunum");
		String stuname = request.getParameter("stuname");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String location = request.getParameter("location");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC&useSSL=false", "root", "123456");
		Statement stmt = con.createStatement();
		String sql = "update student set num='" + stunum + "',name='" + stuname + "',sex='" + sex + "',birthday='" + birthday + "',location='"+location+
				 "' where num='" + Integer.valueOf(id)+"';";
		int i = stmt.executeUpdate(sql);
		if (i == 1) {
			out.println("<h2>修改成功！</h2><br/>");
			out.println("<a href='index.jsp'>返回首页</a>");
		} else {
			out.println("<h2>修改失败！</h2><br/>");
			out.println("<a href='edit.jsp?id='" + stunum + ">重新添加</a>");
		}
		stmt.close();
		con.close();
	%>
</body>
</html>
