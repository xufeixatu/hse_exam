<%@page import="com.examstack.management.utils.CookieUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>HSE 登录系统</title>

<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="keywords" content="">
<link rel="shortcut icon"
	href="<%=basePath%>resources/images/favicon.ico" />
<link href="resources/bootstrap/css/bootstrap-huan.css" rel="stylesheet">
<link href="resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<style type="text/css">
.form-group {
	margin-bottom: 5px;
	height: 59px;
}
</style>
</head>

<body>
	
	<!-- Navigation bar starts -->

	<div class="navbar bs-docs-nav" role="banner">
		<div class="container">
			<nav class="collapse navbar-collapse bs-navbar-collapse"
				role="navigation"></nav>
		</div>
	</div>

	<%! HttpSession sess = null;%>
	<%
		//获得session
		HttpSession session1 = request.getSession();		
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&session1=" + session);
		ServletContext Context = session1.getServletContext();
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&Context=" + Context);
		ServletContext Context1 = Context.getContext("/HSE");
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&Context1" + Context1);

		if (Context1 != null && !Context1.equals("")) {
			 sess = (HttpSession) Context1.getAttribute("session");
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + sess.getAttribute("user"));
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + sess.getAttribute("password"));
		}
	%>

	<!-- Navigation bar ends -->

	<div class="content"
		style="margin-bottom: 100px; background: rgb(77, 191, 217); margin-top: 0;">

		<div class="container">
			<div class="row">
				<div class="col-md-7" id="admin-login-bg">
					<p></p>
				</div>
				<div class="col-md-5">
					<div class="lrform">
						<h5>登陆后台管理系统</h5>
						<div class="form">
							<!-- Login form (not working)-->
							<form class="form-horizontal" action="j_spring_security_check"
								method="post">
								<!-- Username -->
								<div class="form-group">
									<label class="control-label col-md-3" for="username">用户名</label>
									<div class="col-md-9">
										 <input type="text" value="<%=sess.getAttribute("user") %>" class="form-control" name="j_username">
									</div>
								</div>
								<!-- Password -->
								<div class="form-group">
									<label class="control-label col-md-3" for="password">密码</label>
									<div class="col-md-9">
										<input type="password" value="<%=sess.getAttribute("password") %> " class="form-control" name="j_password">
									</div>
								</div>
								<!-- Buttons -->
								<div class="form-group">
									<!-- Buttons -->
									<div class="col-md-9 col-md-offset-3">
										<button id='btn' type="submit"  class="btn btn-default" >登陆</button>
										<button type="reset" class="btn btn-default">取消</button>
										<span class="form-message">${result}</span>
									</div>
								</div>
							</form>
							<i class="fa fa-info"></i> 通过教师/管理员账号登陆系统
						</div>
					</div>

				</div>
			</div>

		</div>

	</div>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="copy">
						<p>
							HSE Copyright © <a href="http://www.HSE.com/"
								target="_blank">HSE</a> - <a href="." target="_blank">主页</a>
							| <a href="http://www.HSE.com/" target="_blank">关于我们</a> |
							<a href="http://www.HSE.com/" target="_blank">FAQ</a> | <a
								href="http://www.HSE.com/" target="_blank">联系我们</a>
						</p>
					</div>
				</div>
			</div>

		</div>

	</footer>
	<!-- 自动登录脚本 -->
	 <script>
		window.onload=function(){
		    document.getElementById("btn").click();
		}
	</script>

	<!-- Slider Ends -->

	<!-- Javascript files -->
	<!-- jQuery -->
	<script type="text/javascript"
		src="resources/js/jquery/jquery-1.9.0.min.js"></script>
	<!-- Bootstrap JS -->
	<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>