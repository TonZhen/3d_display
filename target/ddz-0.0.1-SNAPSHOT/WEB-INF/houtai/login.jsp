<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台登录</title>
    <link href="static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#srand {
	padding: 10px;
	color: green;
	font-weight: bold;
	background-color: white;
	padding: 10px;
	color: green;
	font-weight: bold;
	font-size: 24px;
	margin: 2px 5px;
	color: green;
	font-weight: bold;
}

#ayzm {
	border: 0px;
	padding: 2px 0px;
	font-size: 15px;
	color: green;
	cursor: pointer;
}
</style>
  </head>
  <body>
  			<input type="hidden" id="TenantId" name="TenantId" value="" />
<div class="header"></div>
<div class="loginWraper">
	<div id="loginform" class="loginBox">
		 <form name="loginForm" method="post" id="loginForm">
			<div class="row cl">
				<label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
				<div class="formControls col-xs-8">
					<input id="username"   type="text" placeholder="账户" class="input-text size-L">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
				<div class="formControls col-xs-8">
					<input id="password"  type="password" placeholder="密码" class="input-text size-L">
				</div>
			</div>
			<div class="row cl">
				<div class="formControls col-xs-8 col-xs-offset-3">
				<input id="dlyzm"/>
					<div id="srand"></div>
					<a id="ayzm" onclick="loadimage()">点击加载验证码</a>
				</div>
			</div>
			<div class="row cl">
				<div class="formControls col-xs-8 col-xs-offset-3">
				<button type="button"  id="btnaaa" >立即登录</button>
					<span id="tsxx" style="color: red"></span>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script>
<script type="text/javascript">
	$("#btnaaa")
			.click(
			
					function() {
						var user = $("#username").val();
						var pass = $("#password").val();
						var dlyzm = $("#dlyzm").val();
						var yzms = $("#srand").html();
						if (user == '') {
							$("#tsxx").html("用户名或邮箱不能为空！");
						} else if (pass == '') {
							$("#tsxx").html("密码不能为空！");
						} else if (dlyzm == '') {
							$("#tsxx").html("验证码不能为空!");
						} else if (dlyzm != yzms) {
							$("#tsxx").html("验证码错误!");
						} else {
							$
									.ajax({
										url : "${pageContext.request.contextPath}/houdenglu/"
												+ user
												+ "/"
												+ pass
												+ "/userLogin.do",// 目标地址  
										type : "POST", // 用POST方式传输  
										dataType : 'json', // 数据格式:json
										success : function(data) {
											if (data.cg) {
												window.location.href = "${pageContext.request.contextPath}/houdenglu/toIndex.do";
											} else if (data.cw) {
												$("#tsxx").html(data.cw);
											} 
										}
									});
						}
					});
	$("#usernameSingle").blur(function() {
		var user = $("#usernameSingle").val();
		if (user != '') {
			$("#tsxx").html("");
		}
	});
	$("#passwordSingle").blur(function() {
		var user = $("#passwordSingle").val();
		if (user != '') {
			$("#tsxx").html("");
		}
	});

	function loadimage() {
		var d = Math.random() + "";
		var s = d.substring(3, 7);
		$("#srand").html(s);
		$("#srand").css("display", "inline");
	}
</script>
  </body>
</html>
