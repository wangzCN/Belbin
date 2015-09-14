<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	
	var i=1;
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
一、我认为我能为团队做出贡献是
</div>
<div id="container">
<form action="test2.jsp" method="post" id="form">
<p><input type="hidden" name="count_1"/></p>
<p>
<ol >

	<li>我能很快地发现并把握住新的机遇<br>
	<select name="select_1" onchange="chg(1,1)"></select>
	<input type="hidden" name="s_1" value="0" />
	</li>
	<script>init(1,allCount);</script>

	<li>我能与各种类型的人一起合作共事<br>
	<select name="select_2" onchange="chg(1,2)"></select>
	<input type="hidden" name="s_2" value="0" />
	</li>
	<script>init(2,allCount);</script>

	<li><select name="select_3" onchange="chg(1,3)"></select>
	<input type="hidden" name="s_3" value="0" />
	我生来就爱出主意</li>
	<script>init(3,allCount);</script>

	<li>
	<select name="select_4" onchange="chg(1,4)"></select>
	<input type="hidden" name="s_4" value="0" />
	我的能力在于，一旦发现某些对实现集体目标很有价值的人， 我就及时把他们推荐出来</li>
	<script>init(4,allCount);</script>

	<li><select name="select_5" onchange="chg(1,5)"></select>
	<input type="hidden" name="s_5" value="0" />
	我能把事情办成，这主要靠我个人的实力</li>
	<script>init(5,allCount);</script>

	<li><select name="select_6" onchange="chg(1,6)"></select>
	<input type="hidden" name="s_6" value="0" />
	如果最终能导致有益的结果，我愿面对暂时的冷遇</li>
	<script>init(6,allCount);</script>

	<li><select name="select_7" onchange="chg(1,7)"></select>
	<input type="hidden" name="s_7" value="0" />
	我通常能意识到什么是现实的，什么是可能的</li>
	<script>init(7,allCount);</script>

	<li><select name="select_8" onchange="chg(1,8)"></select>
	<input type="hidden" name="s_8" value="0" />
	在选择行动方案时，我能不带倾向性，也不带偏见地提出一个合理的替代方案</li>
	<script>init(8,allCount);</script>
</ol>
</p>
<p align="center"><input  type="submit" name="submit" class="button"  value="下一题" onclick="return CheckNum();"/></p>
</form>
</div>
</body>
</html>