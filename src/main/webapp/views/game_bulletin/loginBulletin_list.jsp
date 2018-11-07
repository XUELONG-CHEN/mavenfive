<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>游戏登陆公告管理</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Tsplay</title>


<style type="text/css">
#page-inner {
    width:100%;
    margin:10px 20px 10px 0px;
    background-color:transparent;
    padding:10px;
}

.dnc {
	position: absolute;
	top: 100px;
	left: 300px;
}

.dncfather .dnc ul {
	list-style: none;
	padding: 0px; margin : 0px;
	padding-right: 50px; padding-left : 50px;
	border-bottom: 1px solid #666;
	margin: 0px; padding-right : 50px;
	padding-left: 50px;
}

.dncfather .dnc ul li {
	float: left;
}

.fl {
	float: left;
}

.fr {
	float: right;
}

.clear:after {
	content: '';
	display: block;
	clear: both;
}

#page-inner>ul {
	list-style: none;
	height: 100px;
	font-size: 20px;
	font-weight: bold;
	background-color: #cccccc;
	margin-right: 20px;
	padding: 0px;
	padding-left: 50px;
	padding-right: 50px;
}

.clear:after {
	content: '';
	display: block;
	clear: both;
}

#page-inner>ul li {
	line-height: 50px;
	text-aline: center;
}

.status1,.status2,.status3 {
	position: absolute;
	margin-top: 110px;
}

.status1 {
	left: 500px;
}

.status2 {
	left: 850px;
}

.status3 {
	left: 1200px;
}

.btn{
	width:100%;
}

.btn li{
	margin-right:150px;
	width:100px;
	margin-bottom:20px;
}

.btn li button{
	width:120px;
}
</style>

<script>
	$(document).ready(function() {
		$('#dataTables-example').dataTable();
	});
	
	function editInfo(infoValue,idValue){

		var tds = $(infoValue).closest('tr').find('td');
        var typeValue = tds.eq(1).text();
        var contentValue = tds.eq(2).text();
        var largeAreaValue = tds.eq(3).text();
        var areaServiceValue = tds.eq(4).text();
        var channelValue = tds.eq(5).text();
        var effectiveTimeValue = tds.eq(6).text();
		
/* 		var idValue = document.getElementById("idValue").value;
		var typeValue = document.getElementById("typeValue").value;
		var contentValue = document.getElementById("contentValue").value;
		var largeAreaValue = document.getElementById("largeAreaValue").value;
		var areaServiceValue = document.getElementById("areaServiceValue").value;
		var channelValue = document.getElementById("channelValue").value;
		var effectiveTimeValue = document.getElementById("effectiveTimeValue").value;*/
		
		//向模态框中传值  
		$('#idModal').val(idValue);
		$('#typeModal').val(typeValue);
		$('#contentModal').val(contentValue);
		$('#largeAreaModal').val(largeAreaValue);
		$('#areaServiceModal').val(areaServiceValue);
		$('#channelModal').val(channelValue);
		$('#effectiveTimeModal').val(effectiveTimeValue); 

	}
</script>

</head>
<body>
<table class="table table-striped table-bordered table-hover" id="dataTables-example">
	<thead>
	<tr>
		<th>id</th>
		<th>公告类型</th>
		<th>公告内容</th>
		<th>所属大区</th>
		<th>区服</th>
		<th>所属渠道</th>
		<th>有效期</th>
		<th style="text-align: center;">操作</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${loginBulletinList}" var="list">
		<tr>
			<td>1</td>
			<td>${list.type}</td>
			<td style="max-width: 400px; overflow: hidden; text-overflow:ellipsis; white-space: nowrap;">${list.content}</td>
			<td>${list.largeArea}</td>
			<td>${list.areaService}</td>
			<td>${list.channel}</td>
			<td>${list.effectiveTime}</td>
			<td style="text-align: center;">
				<a href="javascript:void(0);" data-toggle="modal" data-target="#myModal" style="cursor: pointer;" onclick="editInfo(this,${list.id})">修改</a>|
				<a href="<%=request.getContextPath()%>/loginBulletin/deleteLoginBulletinById.do?id=${list.id}">删除</a>
			</td>
				<%-- <input type="hidden" id="idValue" value="${list.id}">
                <input type="hidden" id="typeValue" value="${list.type}">
                <input type="hidden" id="contentValue" value="${list.content}">
                <input type="hidden" id="largeAreaValue" value="${list.largeArea}">
                <input type="hidden" id="areaServiceValue" value="${list.areaService}">
                <input type="hidden" id="channelValue" value="${list.channel}">
                <input type="hidden" id="effectiveTimeValue" value="${list.effectiveTime}"> --%>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
<script type="text/javascript">
<%-- window.onload=function()
{
	var power="<%=session.getAttribute("power")%>";

	if (power.indexOf("c")>=0) {

		//window.location.assign("/GameManagementSystem/views/backstage_account/permission_assignment.jsp");
	}
	else{
	alert("权限不足，禁止访问！");
	parent.window.close();
	} 
} --%>

</script>
</html>