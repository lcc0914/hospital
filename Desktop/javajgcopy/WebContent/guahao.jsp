<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>挂号</title>
		<link rel="stylesheet" href="css/base.css"/>
		<link rel="stylesheet" href="css/zhuce.css"/>
		<link rel="stylesheet" href="css/page.css"/>
		<link rel="stylesheet" href="css/guahao.css"/>
	</head>
	<body>
		<div class="W">
			<!--挂号头部-->
			<header>
				<div class="logo">
					<a href="index.jsp"><img src="images/logo_03.png" /></a>
				</div>
			</header>
			<!--挂号-->
			<div class="reg1">
				<h4>${param.keshi} 挂号</h4>
				<div class="regform">
					<form action="${pageContext.request.contextPath}/guahao.action" method="post">
						<ul>
							<input type="hidden" name="keshi" value="${param.keshi}"/>
							<li><label>挂号日期:</label><input type="date" name="date"></li>
							<li>
								<label>挂号时间:</label>
								<select name="time">
									<option style="display: none"></option>
									<option>8:00-9:00</option>
									<option>9:00-10:00</option>
									<option>10:00-11:00</option>
									<option>11:00-12:00</option>
									<option>13:00-14:00</option>
									<option>14:00-15:00</option>
									<option>15:00-16:00</option>
									<option>16:00-17:00</option>
								</select>
							</li>
							<li><label>选择医生:</label>
								<select name="name">
									<option style="display: none"></option>
									<option>普通号</option>
									<sql:setDataSource var="database" driver="com.mysql.jdbc.Driver" 
										url="jdbc:mysql://localhost:3306/doctor?useUnicode=true&characterEncoding=utf-8" 
										user="root" password="licclicc"></sql:setDataSource>
									<sql:query dataSource="${database}" var="results">
										select * from t_expert where keshi="${param.keshi}";
									</sql:query>
									<c:forEach items="${results.rows}" var="perRow">
											<option>${perRow.name}</option>
									</c:forEach>
								</select>
							</li>
							<li>
								<input type="submit" class="btn" value="确认挂号" id="guahao"/>
							</li>
						</ul>
						<span style="color:red;font-size:20px;">${empty requestScope.tishi?" ":requestScope.tishi }</span>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>