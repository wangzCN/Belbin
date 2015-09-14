<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String sel =""; 
String sel_v="";
int i;
for(i=17;i<=24;i++){
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
	
	var i=4;
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
四、我在工作团队中的特征是
</div>
<div id="container">
<form action="test5.jsp" method="post" id="form">
<p><input type="hidden" name="count_4"/></p>
<p>
<ol>
<li><select name="select_25" onchange="chg(4,25)"></select>
	<input type="hidden" name="s_25" value="0" />
	我有兴趣更多地了解我的同事</li>
	<script>init(25,allCount);</script>

	<li><select name="select_26" onchange="chg(4,26)"></select>
	<input type="hidden" name="s_26" value="0" />
	我经常向别人的见解进行挑战或坚持自己的意见</li>
	<script>init(26,allCount);</script>

	<li><select name="select_27" onchange="chg(4,27)"></select>
	<input type="hidden" name="s_27" value="0" />
	在辩论中，我通常能找到论据去推翻那些不甚有理的主张</li>
	<script>init(27,allCount);</script>

	<li><select name="select_28" onchange="chg(4,28)"></select>
	<input type="hidden" name="s_28" value="0" />
	我认为，只要计划必须开始执行，我有推动工作运转的才能</li>
	<script>init(28,allCount);</script>

	<li><select name="select_29" onchange="chg(4,29)"></select>
	<input type="hidden" name="s_29" value="0" />
	我有意避免使自己太突出或出人意料</li>
	<script>init(29,allCount);</script>

	<li><select name="select_30" onchange="chg(4,30)"></select>
	<input type="hidden" name="s_30" value="0" />
	对承担的任何工作，我都能做到尽善尽美</li>
	<script>init(30,allCount);</script>

	<li><select name="select_31" onchange="chg(4,31)"></select>
	<input type="hidden" name="s_31" value="0" />
	我乐于与工作团队以外的人进行联系</li>
	<script>init(31,allCount);</script>

	<li><select name="select_32" onchange="chg(4,32)"></select>
	<input type="hidden" name="s_32" value="0" />
	尽管我对所有的观点都感兴趣，但这并不影响我在必要的时候下决心</li>
	<script>init(32,allCount);</script>
</ol>
</p>
<p align="center"><input  type="submit" name="submit" class="button"  value="下一题" onclick="return CheckNum();"/></p>
</form>
</div>
</body>
</html>