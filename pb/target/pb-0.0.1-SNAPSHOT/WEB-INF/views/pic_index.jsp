<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--子栏目调用 -->

<!--子栏目调用 -->


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/static/css/css.css" rel="stylesheet" type="text/css">
<script src="/static/js/jquery-1.4a2.min.js" type="text/javascript"></script>
<script src="/static/js/jquery.KinSlideshow-1.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript">

//打开页面随机选择 切换方式（方向）,怕增大KinSlideshow.js文件 就没把随机切换写到里面。
//使用时如有需要随机自己写在前面是一样的。而且还可以只固定随机切换哪几种。

var moveStyle
var rand =parseInt(Math.random()*4)
switch(rand){
	case 0:	moveStyle="left" ;break;
	case 1:	moveStyle="right" ;break;
	case 2:	moveStyle="down" ;break;
	case 3:	moveStyle="up" ;break;
}
$(function(){
	$("#KinSlideshow").KinSlideshow({moveStyle:moveStyle});
	
})
</script>

<style type="text/css">
.code{ height:auto; padding:20px; border:1px solid #9EC9FE; background:#ECF3FD;}
.code pre{ font-family:"Courier New";font-size:14px;}
.info{ font-size:12px; color:#666666; font-family:Verdana; margin:20px 0 50px 0;}
.info p{ margin:0; padding:0; line-height:22px; text-indent:40px;}
h2.title{ margin:0; padding:0; margin-top:50px; font-size:18px; font-family:"微软雅黑",Verdana;}
h3.title{ font-size:16px; font-family:"微软雅黑",Verdana;}
.importInfo{ font-family:Verdana; font-size:14px;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
</style>





<div id="KinSlideshow" style="visibility:hidden;">
<c:forEach items="${paList}" var="pa">
<a href="/article?id=${pa.id}" target="_blank"><img src="/uploads/${pa.picture}" alt="${pa.title}" width='<c:if test="${type == 1}">595</c:if><c:if test="${type == 0}">320</c:if>' height="<c:if test="${type == 1}">400</c:if><c:if test="${type == 0}">230</c:if>" /></a>
</c:forEach>
</div>
