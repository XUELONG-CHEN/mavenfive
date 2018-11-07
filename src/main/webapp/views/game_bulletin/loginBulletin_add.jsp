<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>游戏登陆公告添加</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Tsplay</title>

<link href="<%=request.getContextPath()%>/resource/assets/css/bootstrap.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resource/assets/css/font-awesome.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resource/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resource/assets/css/custom-styles.css" rel="stylesheet" />
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<link href="<%=request.getContextPath()%>/resource/assets/css/htmleaf-demo.css">
<link href="<%=request.getContextPath()%>/resource/assets/css/position.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resource/assets/dist/css/bootstrap-datepicker3.css">
<link href="<%=request.getContextPath()%>/resource/assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

<script src="<%=request.getContextPath()%>/resource/assets/js/jquery-1.10.2.js"></script>
<script src="<%=request.getContextPath()%>/resource/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resource/assets/js/jquery.metisMenu.js"></script>
<script src="<%=request.getContextPath()%>/resource/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="<%=request.getContextPath()%>/resource/assets/js/morris/morris.js"></script>
<script src="<%=request.getContextPath()%>/resource/assets/js/custom-scripts.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resource/assets/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/resource/assets/dist/locales/bootstrap-datepicker.zh-CN.min.js" charset="UTF-8"></script>
<script src="<%=request.getContextPath()%>/resource/assets/js/dataTables/jquery.dataTables.js"></script>
<script src="<%=request.getContextPath()%>/resource/assets/js/dataTables/dataTables.bootstrap.js"></script>

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
</script>

</head>
<body>
	<div id="wrapper">
		<%@include file="../include/top_navbar.jsp" %>
		<%@include file="include/side_navbar.jsp"%>
		<!-- 中间部分开始 -->
		<div id="page-wrapper">
			<!-- 表格开始  -->
			<div class="row" >
				<div class="col-md-8 col-sm-12 col-xs-12" style="width: 100%">
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        	添加公告
	                    </div> 
	                    <div class="panel-body">
	                    <form action="<%=request.getContextPath()%>/loginBulletin/insertLoginBulletin.do" method="post">
	                        <div class="table-responsive">
	                            <table class="table table-striped table-bordered table-hover">
	                                <thead>
	                                    <tr>
	                                        <th>排序</th>
	                                        <th>公告类型</th>
	                                        <th>所属大区</th>
	                                        <th>区服</th>
	                                        <th>所属渠道</th>
	                                        <th>有效期</th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    <tr>
	                                    	<td>1</td>
	                                        <td>
		                                      	<select class="form-control" name="type">
		                                          <option selected="selected">请选择</option>
		                                          <option>活动公告</option>
		                                          <option>维护公告</option>
		                                          <option>开服公告</option>
		                                          <option>更新公告</option>
		                                      	</select>
	                               			</td>
	                                        <td>
		                                      	<select class="form-control" name="largeArea">
		                                          <option selected="selected">请选择</option>
		                                          <option>Android</option>
		                                          <option>ios</option>
		                                          <option>4</option>
		                                          <option>5</option>
		                                     	 </select>
			                                </td>
			                                <td>
			                                	<select class="form-control" name="areaService">
		                                          <option selected="selected">请选择</option>
		                                          <option>1区天明珠</option>
		                                          <option>2区方寸盒</option>
		                                          <option>4</option>
		                                          <option>5</option>
		                                      	</select>
			                                </td>
			                                <td>
			                                    <select class="form-control" name="channel">
		                                          <option selected="selected">请选择</option>
		                                          <option>官网</option>
		                                          <option>渠道A</option>
		                                          <option>渠道B</option>
		                                          <option>5</option>
		                                      </select>
			                                </td>
	                                        <td><input class="form-control" name="effectiveTime"></td>
	                                    </tr>
	                                </tbody>
	                            </table>
	                            <div class="form-group">
	                               	<label>公告内容</label>
	                                <textarea class="form-control" rows="10" name="content"></textarea>
	                           	</div>
	                            <input type="submit" class="btn btn-primary" style="width: 80px; float:right;"/>
	                        </div>
	                    </form>
	                    </div>
	                </div>
	        	</div>
            </div>
            <!-- 表格结束  -->
		</div>
		<!-- 中间部分结束 -->
		
	</div>
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