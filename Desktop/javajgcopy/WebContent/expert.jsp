<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>医院挂号系统</title>
		<link rel="stylesheet" href="css/base.css" />
		<link rel="stylesheet" href="css/common.css" />
		<link rel="stylesheet" href="css/index.css" />
		<link rel="stylesheet" href="css/expert.css" />
	</head>
	<body>
		<!--首页头部-->
		<section class="shortcut">
			<div class="W">
				<div class="fl">
					<ul>
						<li>欢迎进入医院挂号系统&nbsp;</li>
						<li>
							<c:if test="${empty sessionScope.USER_SESSION}">
								<a href="login.jsp" class="style_red">请登录&nbsp;</a>
								<a href="zhuce.jsp" class="style_red">注册</a>
							</c:if>
							<c:if test="${not empty sessionScope.USER_SESSION}">
								<a class="style_red">欢迎${sessionScope.USER_SESSION.phonenumber}</a>
								<a class="style_red" href="${pageContext.request.contextPath}/logout.action">退出登录</a>
							</c:if>
						</li>
					</ul>
				</div>
				<div class="fr">
					<ul>
						<form action="${pageContext.request.contextPath}/mine.action" method="post">
							<input type="submit"  value="我的挂号">
						</form>
					</ul>
				</div>
			</div>
		</section>
		<header class="header W">
			<div class="logo">
				<h1>
					<a href="index.jsp" title="医院挂号系统">医院挂号系统</a>
				</h1>
			</div>
			<div class="search">
				<form action="${pageContext.request.contextPath}/sou.action" method="post">
					<input type="text" class="sou" name="name" placeholder="搜索医生"/>
					<input type="submit" class="button" value="搜索">
				</form>
			</div>
		</header>
		<!--标签导航栏-->
		<nav class="nav">
			<div class="W">
				<div class="dropdown">
					<div class="dt">全部科室</div>
					<div class="dd">
						<ul>
							<li>
								<a>内科</a>
								<div class="none">
									<div class="navitems">
										<ul>
											<li><a href="guahao.jsp?keshi=消化内科" style="font-size: 20px;">消化内科</a></li>
											<li><a href="guahao.jsp?keshi=呼吸内科" style="font-size: 20px;">呼吸内科</a></li>
											<li><a href="guahao.jsp?keshi=神经内科" style="font-size: 20px;">神经内科</a></li>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<a>外科</a>
								<div class="none">
									<div class="navitems">
										<ul>
											<li><a href="guahao.jsp?keshi=肛肠科" style="font-size: 20px;">肛肠科</a></li>
											<li><a href="guahao.jsp?keshi=胸外科" style="font-size: 20px;">胸外科</a></li>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<a>妇产科</a>
								<div class="none">
									<div class="navitems">
										<ul>
											<li><a href="guahao.jsp?keshi=产科门诊" style="font-size: 20px;">产科门诊</a></li>
											<li><a href="guahao.jsp?keshi=妇科门诊" style="font-size: 20px;">妇科门诊</a></li>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<a>儿科</a>
								<div class="none">
									<div class="navitems">
										<ul>
											<li><a href="guahao.jsp?keshi=儿科门诊" style="font-size: 20px;">儿科门诊</a></li>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<a>耳鼻喉科</a>
								<div class="none">
									<div class="navitems">
										<ul>
											<li><a href="guahao.jsp?keshi=耳鼻喉科门诊" style="font-size: 20px;">耳鼻喉科门诊</a></li>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<a>口腔科</a>
								<div class="none">
									<div class="navitems">
										<ul>
											<li><a href="guahao.jsp?keshi=口腔科门诊" style="font-size: 20px;">口腔科门诊</a></li>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<a>眼科</a>
								<div class="none">
									<div class="navitems">
										<ul>
											<li><a href="guahao.jsp?keshi=眼科门诊" style="font-size: 20px;">眼科门诊</a></li>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<a>其他</a>
								<div class="none">
									<div class="navitems">
										<ul>
											<li><a href="guahao.jsp?keshi=肿瘤科" style="font-size: 20px;">肿瘤科</a></li>
											<li><a href="guahao.jsp?keshi=皮肤科" style="font-size: 20px;">皮肤科</a></li>
											<li><a href="guahao.jsp?keshi=中医门诊" style="font-size: 20px;">中医门诊</a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="navitems">
					<ul>
						<li><a href="index.jsp">首页</a></li>
						<li><a href="expert.jsp">专家信息</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!--首页主体-->
		<div class="W">
			<div class="main">
				<div class="focus">
					<div class="yisheng">
						<ul>
							<li>
								<div><img src="doctor/何裕隆.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=何裕隆">何裕隆</a></p>
							</li>
							<li>
								<div><img src="doctor/南月敏.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=南月敏">南月敏</a></p>
							</li>
							<li>
								<div><img src="doctor/厉有名.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=厉有名">厉有名</a></p>
							</li>
							<li>
								<div><img src="doctor/叶剑涛.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=叶剑涛">叶剑涛</a></p>
							</li>
							<li>
								<div><img src="doctor/杜军保.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=杜军保">杜军保</a></p>
							</li>
							<li>
								<div><img src="doctor/段涛.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=段涛">段涛</a></p>
							</li>
							<li>
								<div><img src="doctor/江山平.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=江山平">江山平</a></p>
							</li>
							<li>
								<div><img src="doctor/王建六.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=王建六">王建六</a></p>
							</li>
							<li>
								<div><img src="doctor/王良才.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=王良才">王良才</a></p>
							</li>
							<li>
								<div><img src="doctor/甄文俊.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=甄文俊">甄文俊</a></p>
							</li>
							<li>
								<div><img src="doctor/陈亦乐.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=陈亦乐">陈亦乐</a></p>
							</li>
							<li>
								<div><img src="doctor/陈有信.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=陈有信">陈有信</a></p>
							</li>
							<li>
								<div><img src="doctor/高志强.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=高志强">高志强</a></p>
							</li>
							<li>
								<div><img src="doctor/高顺强.jpg"></div>
								<p style="font-size: 16px;"><a href="xiangqing.jsp?name=高顺强">高顺强</a></p>
							</li>
						</ul>
					</div>
				</div>
				<div class="newflash">
					<div class="news">
						<div class="newshd">
							<h5>健康头条</h5>
						</div>
						<div class="newsbd">
							<ul>
								<li><a href="pages/page1.jsp">艺高人胆大，妙手溶栓打破常规</a></li>
								<li><a href="pages/page2.jsp">江南梅雨季：今年夏季需防风邪与暑湿致病</a></li>
								<li><a href="pages/page3.jsp">4只手机灯下做手术 杭州医生援藏三年再续“雪域情</a></li>
								<li><a href="pages/page4.jsp">颈椎病或将纳入法定职业病？上班族：靠人不如靠</a></li>
								<li><a href="pages/page5.jsp">71岁大伯想去逛岳庙，结果没走出小区就晕倒在地</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>