<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String sel =""; 
String sel_v="";
int i;
for(i=41;i<=48;i++){
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
	
	var i=7;
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
七、对于那些在团队工作中或与周围人共事时所遇到的问题
</div>
<div id="container">
<form action="Register_user.jsp" method="post" id="form">
<p><input type="hidden" name="count_7"/></p>
<p>
<ol>
<li><select name="select_49" onchange="chg(7,49)"></select>
	<input type="hidden" name="s_49" value="0" />
	我很容易对那些阻碍前进的人表现出不耐烦</li>
	<script>init(49,allCount);</script>

	<li><select name="select_50" onchange="chg(7,50)"></select>
	<input type="hidden" name="s_50" value="0" />
	别人可能批评我太重分析而缺少直觉</li>
	<script>init(50,allCount);</script>

	<li><select name="select_51" onchange="chg(7,51)"></select>
	<input type="hidden" name="s_51" value="0" />
	我有做好工作的愿望，能确保工作的持续进展</li>
	<script>init(51,allCount);</script>

	<li><select name="select_52" onchange="chg(7,52)"></select>
	<input type="hidden" name="s_52" value="0" />
	我常常容易产生厌烦感，需要有激情的人使我振作起来</li>
	<script>init(52,allCount);</script>

	<li><select name="select_53" onchange="chg(7,53)"></select>
	<input type="hidden" name="s_53" value="0" />
	如果目标不明确， 让我起步是很困难的</li>
	<script>init(53,allCount);</script>

	<li><select name="select_54" onchange="chg(7,54)"></select>
	<input type="hidden" name="s_54" value="0" />
	对于我遇到的复杂问题，我有时不善于加以解释和澄清</li>
	<script>init(54,allCount);</script>

	<li><select name="select_55" onchange="chg(7,55)"></select>
	<input type="hidden" name="s_55" value="0" />
	对于那些我不能做的事，我有意识地求助于他人</li>
	<script>init(55,allCount);</script>

	<li><select name="select_56" onchange="chg(7,56)"></select>
	<input type="hidden" name="s_56" value="0" />
	当我与真正的对立面发生冲突时，我没有把握使对方理解我的观点</li>
	<script>init(56,allCount);</script>
</ol>
</p>
<p align="center"><input  type="submit" name="submit" class="button"  value="完成测试" onclick="return CheckNum();"/></p>
</form>
</div>
</body>
</html>