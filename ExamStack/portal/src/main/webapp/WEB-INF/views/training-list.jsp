<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
		<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
		Remove this if you use the .htaccess -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>HSE</title>
		<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="keywords" content="">
		<!--<link rel="shortcut icon" href="http://localhost:8080/Portal/../resources/images/favicon.ico" />-->
		<link href="resources/bootstrap/css/bootstrap-huan.css"
		rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css"
		rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">

		<style>
			.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
				padding: 8px 0;
				line-height: 1.42857143;
				vertical-align: middle;
				border-top: 1px solid #ddd;
			}

			a.join-practice-btn {
				margin-top: 0;
			}
		</style>

	</head>

	<body>
		
		<!-- Navigation bar starts -->

		<div class="navbar bs-docs-nav" role="banner">
			<div class="container">
				<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
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
						<li class="active">
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

		<!-- Slider starts -->
		<div class="content" style="margin-bottom: 100px;">
			<div class="container" style="margin-top: 40px;">
				<div class="row">
						<div class="col-xs-12">
							<div style="border-bottom: 1px solid #ddd;">
							<h3 class="title"><i class="fa fa-book"></i>培训资料</h3>
							
							</div>
							<div id="training-list">
							<table class="table-striped table">
								 <thead>
									<tr>
										<td style="display:none;">ID</td>
										<td>培训名称</td>
										<td>描述</td>
										<!-- <td>创建人</td> -->
										<td>截止时间</td>
										<td>操作</td>
									</tr>
								</thead> 
								<tbody>
									<c:forEach items="${trainingList }" var="item">
										<tr>
											<td style="display:none;">${item.trainingId }</td>
											<td>
												${item.trainingName }
											
											</td>
											<td style="width:50%;">
												<div style="font-size:12px;padding:10px 0px;">
												
													${item.trainingDesc }
												</div>
											</td>
											<td><fmt:formatDate value="${item.expTime}"
													pattern="yyyy-MM-dd" /></td>
											
											<%-- <td>${item.trainingDesc }</td> --%>
											<%-- <td><fmt:formatDate value="${item.createTime}"
													pattern="yyyy-MM-dd" /></td> --%>
										<%-- 	<td><fmt:formatDate value="${item.expTime}"
													pattern="yyyy-MM-dd" /></td> --%>
											<td ><a class="btn btn-success approved-btn" data-id="${item.trainingId }" href="student/training/${item.trainingId }">参加培训</a></td>

										</tr>
									</c:forEach>

								</tbody>
								<tfoot></tfoot>
							</table>

							</div>
							<div class="page-link-content">
								<ul class="pagination pagination-sm">${pageStr}</ul>
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
