<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta name="viewport" content="width=device-width,user-scalable=no" />
<title>HeyPartnet-用户登录</title>
<style type="text/css">
*{
	margin:0;
	padding:0;
	font-family:"Microsoft Yahei","Microsoft SimHei"
}
body{
	background-color:#0099FF;
	}
#title{
	text-align:center;
	width:50%;
	margin:0 auto;
	padding-top:0.5em;
	color:white;	
	font-size:1.2em;
	font-family:"Microsoft Yahei","Microsoft SimHei"
}
#index_img{
	width:100%;
}
#index_img img{	
	width:100%;
}
#form{
	width:90%;
	color:white;
}
input {
	border:0;
}

#err{
	color:red;
	font-size:0.8em;
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
#reset{
	background-color:#AAAAA0;
}
.text{
	font-size:1em;
	height:1.8em;
	margin:0.5em 0;
	width:75%;
	border-radius:0.2em;
}
</style>

<script type="text/javascript">
function checkform(){
    if (document.login.passwd.value==""||document.login.username.value=="") 
    {   
        alert("请输入用户名和密码再登录！");
        return false;
    }
}
</script>

</head>
<body >
<!-- 居中对齐 -->
<center>
 
  <div id="index_img"><img src="img/team.jpg"></div>
  <div id="title">
  用户登录
  </div>
  <div id="err" style="font-size:0.5em;color:red;">
   <%
  	String flag = request.getParameter("errNo");
  	try{
  	
	  	if(flag.equals("1")){
	  		out.println("密码错误");
	  	}
	  	if(flag.equals("2")){
	  		out.println("用户名不存在");
	  	}
  	}catch(Exception e){
  		e.printStackTrace();
  	}
   %>
   </div>
  <div id="form">
  <form action = "loginCl.jsp" method="post" onsubmit=" return checkform()" name="login">
  	用户名：<input class="text" type="text" name="username" id="username"><br>
  	密&nbsp;&nbsp;&nbsp;&nbsp;码：<input class="text" type="password" name ="passwd"><br>
  	<input class="button" type="submit" value="登录">
  	
  	<input  class="button" type="reset" id="reset" value="重置">
  </form>
  </div>
  </center>
  </body>
</html>
