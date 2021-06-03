<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>管理员</title>
		<link rel="stylesheet" href="css/base.css"/>
		<link rel="stylesheet" href="css/zhuce.css"/>
		<link rel="stylesheet" href="css/page.css"/>
		<style>
			.xs{
				background-color:green;
				color:white;
			}
		</style>
		<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
		<script>
			$(function(){
				//window.location.replace("${pageContext.request.contextPath}/listuser.action");
				//window.location.href="${pageContext.request.contextPath}/listuser.action";
				$("#ppp li").click(function(){
					$(this).addClass("xs").siblings().removeClass("xs");
					var index=$(this).index();
					$(".biao").eq(index).show().siblings(".biao").hide();
					if(index==0){
						//window.location.href="${pageContext.request.contextPath}/listuser.action";
						window.location.replace("${pageContext.request.contextPath}/listuser.action");
						window.location.replace("${pageContext.request.contextPath}/listexpert.action");
					}else if(index==1){
						//window.location.href="${pageContext.request.contextPath}/listexpert.action";
						//window.location.replace("${pageContext.request.contextPath}/listexpert.action");
					}else if(index==2){
						
					}
					//$(".biao").eq(index).show().siblings(".biao").hide();
				})
			})
		</script>
		<script>
			function sczh(phonenumber,password){
			if(confirm('确认删除账号吗？')){
				$.post("deleteuser.action",{phonenumber:phonenumber,password:password},function(data){
					if(data=="OK"){
						alert("删除成功！");
						window.location.reload();
					}else{
						alert("删除失败！");
						window.location.reload();
					}
				});
			}
			}
		</script>
		<script>
			function scys(name,keshi){
			if(confirm('确认删除医生吗？')){
				$.post("deleteexpert.action",{name:name,keshi:keshi},function(data){
					if(data=="OK"){
						alert("删除成功！");
						window.location.reload();
					}else{
						alert("删除失败！");
						window.location.reload();
					}
				});
			}
			}
		</script>
	</head>
	<body>
		<div class="W">
			<!--注册头部-->
			<header>
				<div class="logo">
					<a href="index.jsp"><img src="images/logo_03.png" /></a>
				</div>
			</header>
			<!--注册-->
			<div class="reg1">
				<h4>管理员</h4>
				<div class="regform1" style="position:relative;">
					<div>
						<ul id="ppp">
							<li class="xs" style="float:left;font-size:20px;border: 1px solid green;width:150px;text-align:center;">用户管理</li>
							<li style="float:left;font-size:20px;border: 1px solid green;width:150px;text-align:center;">医生管理</li>
							<li style="float:left;font-size:20px;border: 1px solid green;width:150px;text-align:center;">添加医生</li>
							<li style="float:none;"></li>
						</ul>
					</div>
					<br/><br/><br/>
					<div class="biao" style="float:none;position:absolute;">
						<table>
						<tr>
							<td>用户手机号</td>
							<td>用户密码</td>
							<td>删除用户</td>
						</tr>
						
						<c:forEach items="${sessionScope.users }" var="user">
							<tr>
								<td>${user.phonenumber }</td>
								<td>${user.password  }</td>
								<td>
									
									<a href="#" style="color:blue;" onclick="sczh('${user.phonenumber}','${user.password}')">删除账号</a>
									
								</td>
							</tr>
						
						</c:forEach>
						</table>
					</div>
					<div class="biao" style="float:none;position:absolute;display:none;">
						<table>
						<tr>
							<td>医生姓名</td>
							<td>医生科室</td>
							<td>删除医生</td>
						</tr>
						
						<c:forEach items="${sessionScope.experts }" var="expert">
							<tr>
								<td>${expert.name }</td>
								<td>${expert.keshi }</td>
								<td>
									
									<a href="#" style="color:blue;" onclick="scys('${expert.name}','${expert.keshi}')">删除医生</a>
									
								</td>
							</tr>
						
						</c:forEach>
						</table>
					</div>
					<div class="biao regform" style="float:none;position:absolute;display:none;">
						<form action="${pageContext.request.contextPath}/tj.action" method="post">
						<ul>
							<li><label>医生姓名:</label><input type="text" name="name" id="expertname"></li>
							<li><label>医生科室:</label><input type="text" name="keshi" id="expertkeshi"></li>
							<li>
								<input type="submit" class="btn" value="添加医生" id="tjexpert"/>
							</li>
						</ul>
						</form>
					<span style="color:red;font-size:20px;">${empty requestScope.msg1?" ":requestScope.msg1 }</span>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
