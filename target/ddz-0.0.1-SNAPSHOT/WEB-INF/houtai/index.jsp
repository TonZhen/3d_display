<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>友人贷后台管理系统</title>
    <meta name="keywords" content="友人贷后台管理系统" />
    <meta name="description" content="友人贷后台管理系统。" /> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" />欢迎<span>${xinxi.yonghuming}</span>来到后台管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="" target="_blank"><span class="icon-home"></span> 前台首页</a>  &nbsp;&nbsp;<a class="button button-little bg-red" href="login.html"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>后台统计</h2>
  <ul>
                    <li><a href="article-list.html" class="icon-caret-right">在线玩家数量</a></li>
					<li><a href="article-list.html" class="icon-caret-right">房间人数统计</a></li>
					<li><a href="article-list.html" class="icon-caret-right">玩家注册数量</a></li>
					<li><a href="article-list.html" class="icon-caret-right">签到统计</a></li>
					<li><a href="article-list.html" class="icon-caret-right">签到赠送金币统计</a></li>
					<li><a href="article-list.html" class="icon-caret-right">充值笔数统计</a></li>
					<li><a href="article-list.html" class="icon-caret-right">亏盈统计</a></li>    
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>管理员管理</h2>
  <ul>
                    <li><a href="${pageContext.request.contextPath}/houdenglu/adminrole.do" target="right" class="icon-caret-right">角色管理</a></li>
					<!-- <li><a href=" " title="操作日志" class="icon-caret-right">操作日志</a></li> -->
					<li><a href="${pageContext.request.contextPath}/houdenglu/adminlist.do"  target="right" class="icon-caret-right">管理员列表 </a></li>
					<li><a href=" " title="清除数据" class="icon-caret-right">清除数据</a></li>        
  </ul>  
  <h2><span class="icon-pencil-square-o"></span>大厅设置</h2>
  <ul>
    				<li><a href=" " title="站点设置" class="icon-caret-right">站点设置</a></li>
					<li><a href=" " title="签到设置" class="icon-caret-right">签到设置</a></li>
					<li><a href=" " title="注册福利" class="icon-caret-right">注册福利</a></li>
					<li><a href=" " title="大厅公告" class="icon-caret-right">大厅公告</a></li>
					<li><a href=" " title="投诉建议" class="icon-caret-right">投诉建议</a></li>        
  </ul>  
  <h2><span class="icon-pencil-square-o"></span>玩家管理</h2>
  			<ul>
					<li><a href=" " title="添加玩家" class="icon-caret-right">添加玩家</a></li>
					<li><a href=" " title="玩家列表" class="icon-caret-right">玩家列表</a></li>
					<li><a href=" " title="经验等级设置" class="icon-caret-right">经验等级设置</a></li>
					<li><a href=" " title="黑名单" class="icon-caret-right">黑名单</a></li>
				</ul>
  <h2><span class="icon-pencil-square-o"></span>充值管理</h2>
  <ul>
    				<li><a href=" " title="充值记录" class="icon-caret-right">充值记录</a></li>
					<li><a href=" " title="充值设置" class="icon-caret-right">充值设置</a></li>
					<li><a href=" " title="接口管理" class="icon-caret-right">接口管理</a></li>        
  </ul>
  <h2><span class="icon-pencil-square-o"></span>游戏管理</h2> 
  <ul>
    			    <li><a href=" " title="游戏列表" class="icon-caret-right">游戏列表</a></li>
					<li><a href=" " title="添加游戏" class="icon-caret-right">添加游戏</a></li>       
  </ul>  
  <h2><span class="icon-pencil-square-o"></span>商城管理</h2> 
  <ul>
    	            <li><a href=" " title="商品列表" class="icon-caret-right">商品列表</a></li>
					<li><a href=" " title="添加商品" class="icon-caret-right">添加商品</a></li>
					<li><a href=" " title="兑换记录" class="icon-caret-right">兑换记录</a></li>
					<li><a href=" " title="道具管理" class="icon-caret-right">道具管理</a></li>        
  </ul>  
  <h2><span class="icon-pencil-square-o"></span>系统设置</h2> 
  <ul>
                    <li><a href=" " title="后台模板" class="icon-caret-right">后台模板</a></li>
					<li><a href=" " title="数据备份" class="icon-caret-right">数据备份</a></li>
					<li><a href=" " title="数据还原" class="icon-caret-right">数据还原</a></li>
					<li><a href=" " title="数据维护" class="icon-caret-right">数据维护</a></li>        
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  });
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  });
});
</script>
<ul class="bread">
  <li>欢迎使用本系统   ----上次登录IP：${xinxi.dengluip} 上次登录时间：${xinxi.zuihoudade} 本次登录主机名和IP：${localHost}</li>
</ul>
<div class="admin">
  <iframe scrolling="auto" frameborder="0" src="houtaidenglulog.jsp" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>