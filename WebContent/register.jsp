<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,user-scalable=no" />
<title>HeyPartner-用户注册</title>

<style type="text/css">
*
{
	margin:0;
	padding:0;
	font-family:"Microsoft Yahei","Microsoft SimHei";
	color:white;
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
#des{
	width:22em;
	margin:1em auto;
	font-size:0.9em;	
}
.button{
	height:2em;
	width:80%;
	text-align:center;
	background-color:#0BBAA0;
	color:white;
	font-family:"Microsoft Yahei","Microsoft SimHei";
	font-size:1em;
	border:0;
	margin:0 auto;
}
</style>
</head>
<body>
<div id="index_img"><img src="img/team.jpg"></div>
<div id="des">
<p>说明：
<p style="text-indet:2em;">本测试基于Belbin团队角色测试理论，若确定进行测试，您需要完成7个问题。每题有八句话，请将总分10分分配给每题的八个句子。</p><p>分配的原则是：最体现您行为的句子分最高，以此类推。最极端的情况也可能是十分全部分配给其中的某一句话。请根据您的实际情况选择分数。请注意每题所选总分不要超过或少于10分，否则系统无法给出测试结果。
</p>
</div>
<div style="width:22em;;margin:0 auto;" align="center">
<form action="test1.jsp" method="post">
<input class="button" type="submit" value="开始测试">
</form>
</div>
</body>
</html>