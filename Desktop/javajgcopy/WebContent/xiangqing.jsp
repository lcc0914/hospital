<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>详情</title>
		<link rel="stylesheet" href="css/base.css"/>
		<link rel="stylesheet" href="css/zhuce.css"/>
		<link rel="stylesheet" href="css/page.css"/>
		<link rel="stylesheet" href="css/xiangqing.css"/>
	</head>
	<body>
		<div class="W">
			<!--详情头部-->
			<header>
				<div class="logo">
					<a href="index.jsp"><img src="images/logo_03.png" /></a>
				</div>
			</header>
			<!--详情-->
			<div class="reg1">
				<h4>详情</h4>
				<div class="regform1">
					<div class="tu">
						<img src="doctor/${param.name}.jpg"/>
					</div>
					<div class="neirong">
						<sql:setDataSource var="database" driver="com.mysql.jdbc.Driver" 
						url="jdbc:mysql://localhost:3306/doctor?useUnicode=true&characterEncoding=utf-8" 
						user="root" password="licclicc"></sql:setDataSource>
						<sql:query dataSource="${database}" var="results">
							select * from t_expert where name="${param.name}";
						</sql:query>
						<c:forEach items="${results.rows}" var="perRow">
							<p>姓名：${param.name}</p>
							<p>科室：${perRow.keshi}</p>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
