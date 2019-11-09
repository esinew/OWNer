<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登陆</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
<!-- 顶部 -->
	<div class="body">
		<div class="title">
			
		</div>
	</div>
	<!-- 内容 -->
		<div class="middle">
			<div class="deng clear">
			<form action ="LoginServlet" method="post">
				<div class="denglu">
					<div class="first">
						<a href="javascript:;" class="left">帐号登录</a>
						<span class="line"></span>
						
					</div>
					<div class="erweima">
						<div class="second">
							<div class="mima">
								<input type="text" name="username" id ="name" placeholder="账号" class="zh">
								<input type="password" name="pwd" id="pwd" placeholder="密码" class="mm">
								<input type="image" src="image/dl.jpg"  class="tp">
								<div class="di clear">
									<a href="" class="zb">
										手机短信登录
									</a>
									<a href="" class="ybz">
										忘记密码?
									</a>
									
								</div>
							</div>
						</div>
						<div class="erwei">
							<div class="erwei1"><img src="image/shaoma.jpg" alt=""></div>
							<div class="erweizi">
							</div>
						</div>
					</div>
				</div>
			</form>
			</div>
		</div>
		<!-- //非空校验 -->
	<script type="text/javascript">
		function dl(){
			var name,pwd;
			name=document.getElementById("name").value;
			pwd= document.getElementById("pwd").value;
			if(name==null||name==""||name.length==0){
				alert("用户名不能为空");
				return false;
			}
			if(pwd==null||pwd==""||pwd.length==0){
				alert("学号不能为空");
				return false;
			}else{
				
			}
		}	
	
	</script>
	
	<script>
		$(".first a").click(function () {
			$(this).css("color","#ff6700").siblings("a").css("color","#ccc");
		});
		$(".first .right").click(function () {
			$(this).parents(".first").next().find(".erwei").css("display","block");
		})
		$(".first .left").click(function () {
			$(this).parents(".first").next().find(".erwei").css("display","none");
		})
	</script>
</body>
</html>