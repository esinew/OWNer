<%@page import="java.util.jar.Attributes.Name"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/xiaoyuanzu.css" rel="stylesheet" type="text/css"/>
</head>
<body>
		<div class="tophead">
			<div class="bodylist">
				<a href="#">
				<% request.setCharacterEncoding("utf-8");
				String name=request.getParameter("uname"); %>
					<p><%out.print(name); %></p><!--登录后显示用户名-->
				</a>
				<a href="#">
					<p>注销</p><!--如果未登录注销项不显示-->
				</a>
			</div>
			
		</div>
		<div class="body">
			<div class="container">
				<div class="card">
					<div class="content">
						<h1>1</h1>
						<p>二手流转</p>
						<a href="#">Read more</a>
					</div>
				</div>
				<div class="card">
					<div class="content">
						<h1>2</h1>
						<p>河大资讯</p>
						<a href="#">Read more</a>
					</div>
				</div>
				<div class="card">
					<div class="content">
						<h1>3</h1>
						<p>周边兼职</p>
						<a href="#">Read more</a>
					</div>
				</div>
				<div class="card">
					<div class="content">
						<h1>4 </h1>
						<p>出租合租</p>
						<a href="#">Read more</a>
					</div>
				</div>	
			</div>
			<div class="bottom">
				<p>合作联系方式</p>
				<div class="card">
					<a href="#">
					<img src="image/QQ图标.jpg"/>
					</a>
				</div>
				<div class="card">
					<a href="#">
					<img src="image/微信图标.jpg"/>
					</a>
				</div>
			</div>
		</div>
	</body>
</html>