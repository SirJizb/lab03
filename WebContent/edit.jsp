<%@ page import="java.sql.*" pageEncoding="utf-8" errorPage="error.jsp"%>
<html>
<head>
<title>修改学生信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background: url(tiankong.png) ; background-size:100% 100% ; background-attachment: fixed">
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC&useSSL=false", "root", "123456");		
		PreparedStatement stmt = con.prepareStatement("select * from student where num=?");
		stmt.setString(1, id);
		ResultSet rs = stmt.executeQuery();		
		rs.next();
	%>
	<form action="editsave.jsp" method="post" onsubmit="return dosubmit();">
		<h2>修改学生信息</h2>
		<table style="width:50%">
			<tr>
				<th width="30%">学号：</th>
				<td width="70%"><input name="stunum" type="text"
					value="<%=rs.getInt(1)%>"></td>
			</tr>
			<tr>
				<th>姓名：</th>
				<td><input name="stuname" type="text"
					value="<%=rs.getString(2)%>"></td>
			</tr>
			<tr>
				<th>性别：</th>
				<td>
					<%
					if(rs.getString(3).equals("男")){
						out.print("<input type='radio' name='sex' value='男' checked>男");
						out.print("<input type='radio' name='sex' value='女'>女");
					}else{
						out.print("<input type='radio' name='sex' value='男'>男");
						out.print("<input type='radio' name='sex' value='女' checked>女");
					}
					%>
				</td>
			</tr>
			<tr>
				<th>出生日期：</th>
				<td><input name="birthday" type="text"
					value="<%=rs.getString(4)%>"></td>
			</tr>
			<tr>
				<th>家庭住址：</th>
				<td><input name="location" type="text"
					value="<%=rs.getString(5)%>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="hidden" name="id" value="<%=id%>">
					<input type="submit" value="修改"> <input type="reset"
					value="重置"></td>
			</tr>
		</table>
	</form>
	<%
		rs.close();
		stmt.close();
		con.close();
	%>
	<script type="text/javascript" src="./js/dataCheck.js"></script>
</body>
</html>
