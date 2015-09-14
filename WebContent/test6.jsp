<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String sel =""; 
String sel_v="";
int i;
for(i=33;i<=40;i++){
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
	
	var i=6;
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
六、如果突然给我一件困难的工作，而且时间有限，人员不熟
</div>
<div id="container">
<form action="test7.jsp" method="post" id="form">
<p><input type="hidden" name="count_6"/></p>
<p>
<ol>
<li><select name="select_41" onchange="chg(6,41)"></select>
	<input type="hidden" name="s_41" value="0" />
	在有新方案之前，我宁愿先躲进角落，拟定出一个解脱困境的方案</li>
	<script>init(41,allCount);</script>

	<li><select name="select_42" onchange="chg(6,42)"></select>
	<input type="hidden" name="s_42" value="0" />
	我比较愿意与那些表现出积极态度的人一道工作</li>
	<script>init(42,allCount);</script>

	<li><select name="select_43" onchange="chg(6,43)"></select>
	<input type="hidden" name="s_43" value="0" />
	我会设想通过用人所长的方法来减轻工作负担</li>
	<script>init(43,allCount);</script>

	<li><select name="select_44" onchange="chg(6,44)"></select>
	<input type="hidden" name="s_44" value="0" />
	我天生的紧迫感，将有助于我们不会落在计划后面</li>
	<script>init(44,allCount);</script>

	<li><select name="select_45" onchange="chg(6,45)"></select>
	<input type="hidden" name="s_45" value="0" />
	我认为我能保持头脑冷静，富有条理地思考问题</li>
	<script>init(45,allCount);</script>

	<li><select name="select_46" onchange="chg(6,46)"></select>
	<input type="hidden" name="s_46" value="0" />
	尽管困难重重，我也能保证目标始终如一</li>
	<script>init(46,allCount);</script>

	<li><select name="select_47" onchange="chg(6,47)"></select>
	<input type="hidden" name="s_47" value="0" />
	如果集体工作没有进展，我会采取积极措施去加以推动</li>
	<script>init(47,allCount);</script>

	<li><select name="select_48" onchange="chg(6,48)"></select>
	<input type="hidden" name="s_48" value="0" />
	我愿意展开广泛的讨论意在激发新思想，推动工作</li>
	<script>init(48,allCount);</script>
</ol>
</p>
<p align="center"><input  type="submit" name="submit" class="button"  value="下一题" onclick="return CheckNum();"/></p>
</form>
</div>
</body>
</html>