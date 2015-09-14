<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,user-scalable=no" />
<title>HeyPartner-组建队伍</title>
<script type="text/javascript">
function checkform(){
    if (document.match.type.value=="no") 
    {   
        alert("请选择队伍类别!");
        return false;
    }
}
</script>
<style type="text/css">
*{
	margin:0;
	padding:0;
	font-family:"Microsoft Yahei","Microsoft SimHei";
	color:white;
}
body{
	background-color:#0099FF;
	}

#index_img{
	width:100%;
}
#index_img img{	
	width:100%;
}
select{
	border:0;
	margin:1.5em auto;
	height:2em;
}
.button{
	height:2em;
	width:80%;
	text-align:center;
	background-color:#0BBAA0;
	color:white;
	font-family:"Microsoft Yahei","Microsoft SimHei";
	font-size:1.25em;
	border:0;
	margin:0.5em auto;
	margin-bottom:1em;
}
#container{

	width:21em;
	margin:1em auto;
	font-size:1em;
}
</style>
</head>
<body>
<div id="index_img"><img src="img/team.jpg"></div>
<div  id="container">
<%
	
	; 
	String tid=request.getParameter("tid");
	String name=(String)session.getAttribute("name");
	String uid="";
	String F_lab="";
	String S_lab="";
	String T_lab="";
	Connection con=null;
	Statement sql=null;
	ResultSet rs=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
	}
	catch (Exception e){
		System.out.print(e);
	}
	try{
	String uri = "jdbc:mysql://localhost/heypartner";
	con = DriverManager.getConnection(uri,"root","0827");
	sql = con.createStatement();
	rs = sql.executeQuery("select User_ID,F_lab,S_lab,T_lab from user where Name='"+name+"'");	
	if(rs.next()){
		uid=rs.getString("User_ID");
		session.setAttribute("uid", uid);
		F_lab=rs.getString("F_lab");
		S_lab=rs.getString("S_lab");
		T_lab=rs.getString("T_lab");
	}
	}catch(Exception e)
	{
	System.out.println(e);
	}
	finally{
	if(null != rs){
		rs.close();
	}
	if(null != sql){
		sql.close();
	}
	if(null != con){
		con.close();
	}
	}
%>
	<div id="mess" >
	<%out.print(name); %>您好，根据您的Belbin测试数据，您主要的三种团队角色类型是：<% out.print(F_lab+","+S_lab+","+T_lab);%>
	</div>
<%
	if(tid.equals("01")){
		out.print("  你尚未组队，选择队伍类型，提交后组建队伍。");
	}
	else if(tid.equals("00")){
		out.print("根据您的测试结果，您不适合您刚才所选择的团队类型，请选择其他类型队伍后提交！");
	}
	else{
		out.print("您已经加入编号为"+tid+"的队伍，待队伍满员后我们会根据您提供的信息，向你发送短信，请注意查收！");
	}
	
%>
</div>
<div align="center">
<form action="Match" method="post" onsubmit=" return checkform()" name="match">
<select name="type" id="type" style="background-color:white;color:#999;">
        <option value="no" >--选择队伍人数--</option>
        <option value="3">三人队伍</option>
        <option value="4">四人队伍</option>
        <option value="5">五人队伍</option>
        <option value="6">六人队伍</option>
        <option value="7">七人队伍</option>
        <option value="8">八人队伍</option>
        </select>
<div align="center">
<input type="submit" value="提交" class="button">
</div>
</form>

<!--
	显示用户的性格类型，并提示是否继续组队，并选择队伍人数。 
 -->
</div>
</body>
</html>