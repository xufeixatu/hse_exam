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
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>HSE 登录系统</title>
		
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="keywords" content="">
		<link rel="shortcut icon" href="<%=basePath%>resources/images/favicon.ico" />
		<link href="resources/bootstrap/css/bootstrap-huan.css" rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
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
				role="navigation">
					<ul class="nav navbar-nav">
						<li>
							<a href="home"><i class="fa fa-home"></i>主页</a>
						</li>
						<li>
							<a href="student/practice-list"><i class="fa fa-edit"></i>试题练习</a>
						</li>
						<li>
							<a href="exam-list"><i class="fa  fa-paper-plane-o"></i>在线考试</a>
						</li>
						<li>
							<a href="training-list"><i class="fa fa-book"></i>培训资料</a>
						</li>
						<li>
							<a href="student/usercenter"><i class="fa fa-dashboard"></i>会员中心</a>
						</li>
						<li>
							<a href="student/setting"><i class="fa fa-cogs"></i>个人设置</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Navigation bar ends -->

		<div class="content" style="margin-bottom: 100px;">

			<div class="container">
				<div class="row">

					<div class="col-md-12">
						<div class="lrform">
							<h5>快速考试入口</h5>
							<div class="form">
								<!-- Login form (not working)-->
								<form class="form-horizontal" action="j_spring_security_check" method="post">
									<!-- Username -->
									<div class="form-group">
										<label class="control-label col-md-3" for="username">准考证号</label>
										<div class="col-md-9">
											<input type="text" class="form-control" name="j_seri_no">
											<input type="hidden" value="1" name="j_flag">
										</div>
									</div>
									
									<!-- Buttons -->
									<div class="form-group">
										<!-- Buttons -->
										<div class="col-md-9 col-md-offset-3">
											<button type="submit" class="btn btn-default">
												开始
											</button>
											<span class="form-message">${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}</span>
										</div>
									</div>
								</form>
								没有账号? <a href="user-register">注册</a>
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
								HSE Copyright © <a href="http://www.HSE.com/" target="_blank">HSE</a> - <a href="." target="_blank">主页</a> | <a href="http://www.HSE.com/" target="_blank">关于我们</a> | <a href="http://www.HSE.com/" target="_blank">FAQ</a> | <a href="http://www.HSE.com/" target="_blank">联系我们</a>
							</p>
						</div>
					</div>
				</div>

			</div>

		</footer>

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