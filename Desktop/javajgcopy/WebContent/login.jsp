<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>登录</title>
		<link rel="stylesheet" href="css/base.css"/>
		<link rel="stylesheet" href="css/zhuce.css"/>
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
			<div class="reg">
				<h3>登录
					<div class="login">没有账号，请<a href="zhuce.jsp" style="color: pink;">注册</a></div>
				</h3>
				<div class="regform">
					<form action="${pageContext.request.contextPath}/login.action" method="post" >
						<ul>
							<li><label>手机号:</label><input id="user.phonenumber" type="text" name="phonenumber"></li>
							<li><label>密码:</label><input id="user.password" type="password" name="password"></li>
							<li>
								<input type="submit" class="btn" value="登录" />
							</li>
						</ul>
					</form>
					<span style="color:red;font-size:20px;">${msg}</span>
				</div>
			</div>
		</div>
	</body>
</html>
