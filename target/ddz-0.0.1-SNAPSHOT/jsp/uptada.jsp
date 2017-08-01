<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'uptada.jsp' starting page</title>
     <script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="Goods/upGoods.do" method="post">
   		商品编号：<input type="text" name="GOODSID" value="${toupGoods.GOODSID}" id="bh" readonly="readonly">
   		商品名称：<input type="text" name="GOODSNAME" value="${toupGoods.GOODSNAME}" id="name"><br>
   		商品种类：<select name="GOODSTYPE" >
   						<c:forEach items="${byName}" var="NN">
   								<option value="${NN.TYPEID}">${NN.TYPENAME}</option>
					   	</c:forEach>
   				</select>
   				<br>
   		商品规格：<input type="text" name="GOODSSPEC" value="${toupGoods.GOODSSPEC}" id="gg"><br>
   		商品价格：<input type="text" name="GOODSPRICE" value="${toupGoods.GOODSPRICE}" id="jg"><br>
   		<input type="submit" value="修改" onclick="return yanzheng()">
  		</form>
  		
  		
<script type="text/javascript">
	function yanzheng(){
		if($("#name").val()==""){
			alert("商品名称不能为空");
			return false;
		}else if($("#gg").val()==""){
			alert("商品规格不能为空");
			return false;
		}else if($("#jg").val()==""){
			alert("商品价格不能为空");
			return false;
		}else if($("#bh").val()==""){
			alert("商品编号不能为空");
			return false;
		}

	}
</script>
  </body>
</html>
