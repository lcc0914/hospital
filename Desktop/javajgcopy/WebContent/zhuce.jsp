<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>注册</title>
		<link rel="stylesheet" href="css/base.css"/>
		<link rel="stylesheet" href="css/zhuce.css"/>
		<script src="js/jquery-3.5.1.js"></script>
		
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
				<h3>注册新用户
					<div class="login">已有账号，请<a href="login.jsp" style="color: pink;">登录</a></div>
				</h3>
				<div class="regform">
					<form action="${pageContext.request.contextPath}/zhuce.action" method="post">
						<ul>
							<li><label>手机号:</label><input type="text" name="phonenumber" id="username"><i class="erroricon" id="username2"></i><span class="error" id="username1">手机号格式不正确，请重新输入</span></li>
							<script>
								var ipt=document.querySelector("#username");
								var message=document.querySelector("#username1");
								var pic=document.querySelector("#username2");
								ipt.onblur=function(){
									if(this.value.length==11){
										message.className="success";
										pic.className="successicon";
										message.innerHTML="正确";
									}else{
										message.className="error";
										pic.className="erroricon";
										message.innerHTML="手机号格式不正确，请重新输入";
									}
								}
							</script>
							<li><label>登录密码:</label><input type="password" name="password" id="psd"></li>
							<li><label>确认密码:</label><input type="password" id="psd2"><i class="erroricon" id="psd3"></i><span class="error" id="psd4">密码不一致，请重新输入</span></li>
							<script>
								var psd=document.querySelector("#psd");
								var psd2=document.querySelector("#psd2");
								var message1=document.querySelector("#psd4");
								var pic1=document.querySelector("#psd3");
								psd2.onblur=function(){
									if(psd.value==psd2.value){
										message1.className="success";
										pic1.className="successicon";
										message1.innerHTML="正确";
									}else{
										message1.className="error";
										pic1.className="erroricon";
										message1.innerHTML="密码不一致，请重新输入";
									}
								}
							</script>
							<li>
								<input type="submit" class="btn" value="提交注册" id="zhuce"/>
							</li>
						</ul>
					</form>
					<span style="color:red;font-size:20px;">${empty requestScope.msg?" ":requestScope.msg }</span>
				</div>
			</div>
		</div>
	</body>
</html>
