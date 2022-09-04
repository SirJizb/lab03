<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page errorPage="error.jsp"%>
<html>
<head>
<title>学生管理系统</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background: url(tiankong.png) ; background-size:100% 100% ; background-attachment: fixed">
	<h1>学生管理系统</h1>
	<a href="add.jsp">添加学生信息</a>
	<br />
	<br />
	<table style="width: 50%;">
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>出生年月</th>
			<th>家庭住址</th>
			<th>操作</th>
		</tr>
		<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC&useSSL=false",
			"root", "123456");
			//使用Statement对象
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from student");
			while (rs.next()) {
				int id = rs.getInt(1);
				out.println("<tr><td>" + id + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>"
				+ rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + "<a href='edit.jsp?id=" + id
				+ "'>修改</a>&nbsp;<a href='del.jsp?id=" + id + "'>删除</a></td></tr>");
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
			out.println("Exception:" + e.getMessage());
		}
		%>
	</table>
	<br />
	<hr />
		<div style="text-align: center; width: 100%; font-size: 12px; color: #333;">
	<div id="Date"></div>
	<script type="text/javascript"> 
        setInterval(function(){   
        var date = new Date();   
        var year = date.getFullYear();    //获取当前年份   
        var mon = date.getMonth()+1;      //获取当前月份   
        var da = date.getDate();          //获取当前日   
        var day = date.getDay();          //获取当前星期几   
        var h = date.getHours();          //获取小时   
        var m = date.getMinutes();        //获取分钟   
        var s = date.getSeconds();        //获取秒   
        var d = document.getElementById('Date');    
          d.innerHTML=year+'年'+mon+'月'+da+'日'+'星期'+day+' '+h+':'+m+':'+s;  
        },1000)
    </script></div>
</body>
</html>
