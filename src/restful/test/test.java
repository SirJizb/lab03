package restful.test;

import java.sql.*;
public class test {
	public static void main(String [] args){
		  String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
		  String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=suit";//这里是写你的数据库名字。上面是新建立了Test，所以填Test
		  String userName="sa";//这里是写你的登陆数据库的名，安装完默认是sa
		  String userPwd="123456";//这里是写你的登陆数据库的密码，我设定的比较简单
		  try{
			    Class.forName(driverName);
			    System.out.println("加载驱动成功！");
		  }
		  catch(Exception e){
			    e.printStackTrace();
			    System.out.println("加载驱动失败！");
		  }
		  try{
			    Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
			        System.out.println("连接数据库成功！");
		  }
		  catch(Exception e){
			    e.printStackTrace();
			    System.out.print("SQL Server连接失败！");
		  }       
	}
}