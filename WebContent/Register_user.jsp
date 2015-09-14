<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String sel =""; 
String sel_v="";
int i;
for(i=49;i<=56;i++){
	sel="s_"+i;
	sel_v = request.getParameter(sel);
	session.setAttribute(sel,sel_v);
}
%>
<html>
<head>
<meta name="viewport" content="width=device-width,user-scalable=no" />
<title>HeyPartner-用户信息</title>
<style type="text/css">
*{
	margin:0;
	padding:0;
	font-family:"Microsoft Yahei","Microsoft SimHei"
}
body{
	background-color:#0099FF;
	}
#index_img
{
	width:100%;
}
#index_img img
{	
	width:100%;
}
input {
	border:0;
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
	height:1.5em;
	margin:0.3em 0;
	width:90%;
	border-radius:0.2em;
}
#form{
	width:100%;
	margin :0 auto;
}
#info_t{
	width:90%;
	margin:0 auto;
}
.label{
	width:8em;
	font-size:0.8em;
	color:white;
}
</style>

<script type="text/javascript">
function checkform(){
	
	var reg = new RegExp("^[A-Za-z0-9_。@<>()]+$");
	var reg1 = new RegExp("^(?=.{6,}$)(?![0-9]+$)(?!.*(.).*\1)[0-9a-zA-Z]+$");
	var obj = document.getElementById("username");
    if (!reg.test(obj.value)) 
    {   
        alert("用户名格式不正确，请重新输入！");
        return false;
    }
    if (!reg1.test(document.user.passwd.value)) 
    {   
        alert("密码格式不正确，请重新输入！");
        return false;
    }
    if(document.user.passwd.value!=document.user.passwd_2.value)
    {
    	alert("两次密码输入不一致！")
    	return false;
    }
    if(document.user.phone.value==""||document.user.wx.value=="")
    	{
    		alert("联系电话和微信号不能为空！");
    		return false;
    	}
}
</script>

</head>
<body>
<div id="index_img"><img src="img/test.jpg"></div>
<div id="title" align="center" style="margin-top:0.3em;margin-botttom:0.2em;font-size:1.3em;color:white;">
用户注册<font size="0.5em;">（请填写真实信息）</font>
</div>
<div id="err" style="font-size:0.5em;color:red;" align="center">
   <%
  	String flag = request.getParameter("ret");
  	try{
  	
	  	if(flag.equals("0")){
	  		out.println("该用户名已存在");
	  	}
  	}catch(Exception e){
  		e.printStackTrace();
  	}
   %>
   </div>
<div id="form">
<form action="RegisterCl.jsp" method="post"  name="user" onsubmit=" return checkform()" >
	<table border="0" id="info_t" align="center">
	<tr>   
  	<td align="right" class="label"><font color="red">*</font>用户名：</td><td><input class="text" type="text" name="username" id="username"></td>
  	</tr>
  	<tr> 
  	<td  align="right" class="label"><font color="red">*</font>密码：</td><td><input class="text" type="password" name ="passwd" id="passwd"></td>
  	</tr>
  	<tr>
  	<td align="right" class="label"><font color="red">*</font>再次输入密码：</td><td><input class="text" type="password" name ="passwd_2"></td>
  	</tr>
  	<tr>
  	<td align="right" class="label"><font color="red">*</font>联系电话：</td><td><input class="text" type="text" name="phone" id="phone"></td>
  	</tr>
  	<tr>
  	<td align="right" class="label"><font color="red">*</font>微信号：</td><td><input class="text" type="text" name="wx" id="wx"></td>
  	</tr>
  	<table>
  	<div align="center">
  	<input class="button" type="submit" value="注册">
  	<input  class="button" type="reset" id="reset" value="重置">
  	</div>
</form>
</div>

</body>
</html>