<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.challenge.register.bean.*" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="userinfo" class="com.challenge.register.bean.Userinfo" scope="session"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,user-scalable=no" />
<title>HeyPartner-注册成功</title>
<style type="text/css">
*{
	margin:0;
	padding:0;
	font-family:"Microsoft Yahei","Microsoft SimHei"
}
body{
	background-color:#0099FF;
	}
.button{
	height:2em;
	width:45%;
	text-align:center;
	background-color:#0BBAA0;
	color:white;
	font-family:"Microsoft Yahei","Microsoft SimHei";
	font-size:1em;
	margin:0.5em 0.4em;
	border-radius:0.2em;
	border:0;
}
#index_img{
	width:100%;
}
#index_img img{	
	width:100%;
}
.button{
	height:2em;
	width:45%;
	text-align:center;
	background-color:#0BBAA0;
	color:white;
	font-family:"Microsoft Yahei","Microsoft SimHei";
	font-size:1em;
	margin:0.5em 0.4em;
	border-radius:0.2em;
}
</style>



</head>
<body>
<%
	String name = userinfo.getName();
	String phone = userinfo.getPhone();
	String wx_id= userinfo.getWx_id();
	String password = userinfo.getPassword();
	String F_lab = userinfo.getF_lab();
	String S_lab = userinfo.getS_lab();
	String T_lab = userinfo.getT_lab();
	Connection con;
	Statement sql;
	ResultSet rs;
	try{
		Class.forName("com.mysql.jdbc.Driver");
	}
	catch (Exception e){
		out.print(e);
	}
	try{
		String uri = "jdbc:mysql://localhost/heypartner";
		con = DriverManager.getConnection(uri,"root","0827");
		sql = con.createStatement();

		sql.executeUpdate("INSERT into user(Name,Password,Phone,WX_ID,F_lab,S_lab,T_lab) values('"+name+"','"+password+"','"+phone+"','"+wx_id+"','"+F_lab+"','"+S_lab+"','"+T_lab+"')");
		rs=sql.executeQuery("SELECT User_ID from user where Name='"+name+"'");
		if(rs.next()){
			int uid = rs.getInt("User_ID");
			session.setAttribute("uid",uid);
			session.setAttribute("name",name);
			response.sendRedirect("C_type.jsp?tid=01");
		}
		con.close();
	}
	catch(SQLException el)
	{
		System.out.print(el);
	}
%>

</body>
</html>