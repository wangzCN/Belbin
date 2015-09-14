<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String sel =""; 
String sel_v="";
int i;
for(i=9;i<=16;i++){
	sel="s_"+i;
	sel_v = request.getParameter(sel);
	session.setAttribute(sel,sel_v);
}
%>
<html>
<head>
<meta name="viewport" content="width=device-width,user-scalable=no" />

<title>HeyPartner-Belbin测试</title>
<script>
var allCount=10;

function init(items_id,count){
	var obj=document.all("select_"+items_id);
	obj.length=0;
	for(i=0;i<=count;i++){
		var oOption=document.createElement("OPTION");
		oOption.text=i;
		oOption.value=i;
		obj.add(oOption);
	}
	return true;
}
function chg(title_id,items_id){
	
	var obj=document.all("select_"+items_id);
	var sobj=document.all("s_"+items_id);

	var count=document.all("count_"+title_id).value;
	count=count-parseInt(sobj.value)+parseInt(obj.value); 
	document.all("count_"+title_id).value=count;
    sobj.value=obj.value;
}
function CheckNum(){
	
	var i=3;
	var count=document.all("count_"+i);
	if(count.value!=10)
	{
		alert('分数不等10，请检查后重新评分！');
		return false;
	}

	else
	{
		return true;
	}
}
</script>

<style type="text/css">
*{
	margin:0;
	padding:0;
	font-family:"Microsoft Yahei","Microsoft SimHei"
}
body{
	background-color:#0099FF;
	}
	#form{
	font-size:0.8em;
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
}
select{
	border:0;
	margin:0.2em auto;
}
#index_img
{
	width:100%;
}
#index_img img
{	
	width:100%;
}
#container{
	width:85%;
	margin:0 auto;
	color:WHITE;
}
#title{
	margin:0.5em auto;
}
</style>
</head>
<body>
<div id="index_img"><img src="img/test.jpg"></div>
<div id="title">
三、当我与其他人共同进行一项工作时
</div>
<div id="container">
<form action="test4.jsp" method="post" id="form">
<p><input type="hidden" name="count_3"/></p>
<p>
<ol>
<li><select name="select_17" onchange="chg(3,17)"></select>
	<input type="hidden" name="s_17" value="0" />
	我有在不施加任何压力的情况下，去影响其他人的能力</li>
	<script>init(17,allCount);</script>

	<li><select name="select_18" onchange="chg(3,18)"></select>
	<input type="hidden" name="s_18" value="0" />
	我随时注意防止粗心和工作中的疏忽</li>
	<script>init(18,allCount);</script>

	<li><select name="select_19" onchange="chg(3,19)"></select>
	<input type="hidden" name="s_19" value="0" />
	我愿意施加压力以换取行动，确保会议不是在浪费时间或离题太远</li>
	<script>init(19,allCount);</script>

	<li><select name="select_20" onchange="chg(3,20)"></select>
	<input type="hidden" name="s_20" value="0" />
	在提出独到见解方面，我是数一数二的</li>
	<script>init(20,allCount);</script>

	<li><select name="select_21" onchange="chg(3,21)"></select>
	<input type="hidden" name="s_21" value="0" />
	对于与大家共同利益有关的积极建议我总是乐于支持的</li>
	<script>init(21,allCount);</script>

	<li><select name="select_22" onchange="chg(3,22)"></select>
	<input type="hidden" name="s_22" value="0" />
	我热衷寻求最新的思想和新的发展</li>
	<script>init(22,allCount);</script>

	<li><select name="select_23" onchange="chg(3,23)"></select>
	<input type="hidden" name="s_23" value="0" />
	我相信我的判断能力有助于做出正确的决策</li>
	<script>init(23,allCount);</script>

	<li><select name="select_24" onchange="chg(3,24)"></select>
	<input type="hidden" name="s_24" value="0" />
	我能使人放心的是，对那些最基本的工作，我都能组织得“井井有条”</li>
	<script>init(24,allCount);</script>
</ol>
</p>
<p align="center"><input  type="submit" name="submit" class="button"  value="下一题" onclick="return CheckNum();"/></p>
</form>
</div>
</body>
</html>