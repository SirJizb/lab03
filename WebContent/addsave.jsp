<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" errorPage="error.jsp"%>
<html>
<head>
<title>添加图书信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background: url(tiankong.png) ; background-size:100% 100% ; background-attachment: fixed">
	<%
		request.setCharacterEncoding("utf-8");
		String stunum =  request.getParameter("stunum");
		String stuname = request.getParameter("stuname");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String location = request.getParameter("location");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC&useSSL=false", "root", "123456");
		PreparedStatement stmt = con.prepareStatement("insert into student(num,name,sex,birthday,location) values(?, ?, ? ,? ,?)");
		stmt.setInt(1, Integer.valueOf(stunum));
		stmt.setString(2, stuname);
		stmt.setString(3, sex);
		stmt.setString(4, birthday);
		stmt.setString(5, location);
		int i = stmt.executeUpdate();		
		if (i == 1) {
			out.println("<h2>添加成功！</h2><br/>");
			out.println("<a href='index.jsp'>返回首页</a>");
		} else {
			out.println("<h2>添加失败！</h2><br/>");
			out.println("<a href='add.jsp'>重新添加</a>");
		}
		stmt.close();
		con.close();
	%>
</body>
</html>
