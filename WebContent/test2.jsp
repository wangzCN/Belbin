<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String sel =""; 
String sel_v="";
int i;
for(i=1;i<=8;i++){
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
	
	var i=2;
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
二、在团队中，我可能有的弱点是
</div>
<div id="container">
<form action="test3.jsp" method="post" id="form">
<p><input type="hidden" name="count_2"/></p>
<p>
<ol>
<li><select name="select_9" onchange="chg(2,9)"></select>
	<input type="hidden" name="s_9" value="0" />
	如果会议没有得到很好的组织、控制和主持，我会感到不痛快</li>
	<script>init(9,allCount);</script>

	<li><select name="select_10" onchange="chg(2,10)"></select>
	<input type="hidden" name="s_10" value="0" />
	我容易对那些有高见而又没有适当地发表出来的人表现得过于宽容</li>
	<script>init(10,allCount);</script>

	<li><select name="select_11" onchange="chg(2,11)"></select>
	<input type="hidden" name="s_11" value="0" />
	只要集体在讨论新的观点，我总是说的太多</li>
	<script>init(11,allCount);</script>

	<li><select name="select_12" onchange="chg(2,12)"></select>
	<input type="hidden" name="s_12" value="0" />
	我的客观和不讲情面，使我很难与同事们打成一片</li>
	<script>init(12,allCount);</script>

	<li><select name="select_13" onchange="chg(2,13)"></select>
	<input type="hidden" name="s_13" value="0" />
	在一定要把事情办成的情况下，我有时使人感到特别强硬以至专断</li>
	<script>init(13,allCount);</script>

	<li><select name="select_14" onchange="chg(2,14)"></select>
	<input type="hidden" name="s_14" value="0" />
	可能由于我过分重视集体的气氛，我发现自己很难与众不同</li>
	<script>init(14,allCount);</script>

	<li><select name="select_15" onchange="chg(2,15)"></select>
	<input type="hidden" name="s_15" value="0" />
	我易于陷入突发的想象之中，而忘了正在进行的事情</li>
	<script>init(15,allCount);</script>

	<li><select name="select_16" onchange="chg(2,16)"></select>
	<input type="hidden" name="s_16" value="0" />
	我的同事认为我过分注意细节，总有不必要的担心，怕把事情搞糟</li>
	<script>init(16,allCount);</script>
</ol>
</p>
<p align="center"><input  type="submit" name="submit" class="button"  value="下一题" onclick="return CheckNum();"/></p>
</form>
</div>
</body>
</html>