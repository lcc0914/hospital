<%@page import="com.javaweb.po.Guahao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>我的挂号</title>
		<link rel="stylesheet" href="css/base.css"/>
		<link rel="stylesheet" href="css/zhuce.css"/>
		<link rel="stylesheet" href="css/page.css"/>
		<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
		<script>
										function qxgh(keshi,name,date,time){
											if(confirm('确认取消挂号吗？')){
												$.post("delete.action",{keshi:keshi,name:name,date:date,time:time},function(data){
													if(data=="OK"){
														alert("取消成功！");
														window.location.reload();
													}else{
														alert("取消失败！");
														window.location.reload();
													}
												});
											}
										}
									</script>
	</head>
	<body>
		<div class="W">
			<!--我的头部-->
			<header>
				<div class="logo">
					<a href="index.jsp"><img src="images/logo_03.png" /></a>
				</div>
			</header>
			<!--我的-->
			<div class="reg1">
				<h4>我的挂号</h4>
				<div class="regform1">
					<div class="biao">
					<table>
						<tr>
							<td>科室</td>
							<td>医生</td>
							<td>日期</td>
							<td>时间</td>
							<td>取消挂号</td>
						</tr>
						
						<c:forEach items="${sessionScope.guahaos }" var="guahao">
							<tr>
								<td>${guahao.keshi }</td>
								<td>${guahao.name }</td>
								<td>${guahao.date }</td>
								<td>${guahao.time }</td>
								<td>
									
									<a href="#" style="color:blue;" onclick="qxgh('${guahao.keshi}','${guahao.name}','${guahao.date}','${guahao.time}')">取消挂号</a>
									
								</td>
							</tr>
						
						</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>