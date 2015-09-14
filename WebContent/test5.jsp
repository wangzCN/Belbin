<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String sel =""; 
String sel_v="";
int i;
for(i=25;i<=32;i++){
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
	
	var i=5;
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
五、在工作中，我得到满足，因为
</div>
<div id="container">
<form action="test6.jsp" method="post" id="form">
<p><input type="hidden" name="count_5"/></p>
<p>
<ol>
<li><select name="select_33" onchange="chg(5,33)"></select>
	<input type="hidden" name="s_33" value="0" />
	我喜欢分析情况，权衡所有可能的选择</li>
	<script>init(33,allCount);</script>

	<li><select name="select_34" onchange="chg(5,34)"></select>
	<input type="hidden" name="s_34" value="0" />
	我对寻找解决问题的可行方案感兴趣</li>
	<script>init(34,allCount);</script>

	<li><select name="select_35" onchange="chg(5,35)"></select>
	<input type="hidden" name="s_35" value="0" />
	我感到，我在促进良好的工作关系</li>
	<script>init(35,allCount);</script>

	<li><select name="select_36" onchange="chg(5,36)"></select>
	<input type="hidden" name="s_36" value="0" />
	我能对决策有强烈的影响</li>
	<script>init(36,allCount);</script>

	<li><select name="select_37" onchange="chg(5,37)"></select>
	<input type="hidden" name="s_37" value="0" />
	我能适应那些有新意的人</li>
	<script>init(37,allCount);</script>

	<li><select name="select_38" onchange="chg(5,38)"></select>
	<input type="hidden" name="s_38" value="0" />
	我能使人们在某项必要的行动上达成一致意见</li>
	<script>init(38,allCount);</script>

	<li><select name="select_39" onchange="chg(5,39)"></select>
	<input type="hidden" name="s_39" value="0" />
	我感到我的身上有一种能使我全身心地投入到工作中去的气质</li>
	<script>init(39,allCount);</script>

	<li><select name="select_40" onchange="chg(5,40)"></select>
	<input type="hidden" name="s_40" value="0" />
	我很高兴能找到一块可以发挥我想象力的天地</li>
	<script>init(40,allCount);</script>
</ol>
</p>
<p align="center"><input  type="submit" name="submit" class="button"  value="下一题" onclick="return CheckNum();"/></p>
</form>
</div>
</body>
</html>