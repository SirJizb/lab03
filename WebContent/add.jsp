<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" errorPage="error.jsp"%>
<html>
	<head>
		<title>添加学生信息</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body style="background: url(tiankong.png) ; background-size:100% 100% ; background-attachment: fixed">
		<form action="addsave.jsp" method="post" onsubmit="return dosubmit();">
			<h2>添加学生信息</h2>
			<table style="width: 50%">
				<tr>
					<th width="30%">学号：</th>
					<td width="70%"><input name="stunum" type="text"></td>
				</tr>
				<tr>
					<th>姓名：</th>
					<td><input name="stuname" type="text"></td>
				</tr>
				<tr>
					<th>性别：</th>
					<td>
						<input type="radio" name="sex" value="男" checked>男
						<input type="radio" name="sex" value="女">女
					</td>
				</tr>
				<tr>
					<th>出生日期：</th>
					<td><input name="birthday" type="text"></td>
				</tr>
				<tr>
					<th>家庭住址：</th>
					<td><input name="location" type="text"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="submit" value="添加"> <input type="reset" value="重置"></td>
				</tr>
			</table>
		</form>
		<script type="text/javascript" src="./js/dataCheck.js"> </script>
	</body>
</html>
