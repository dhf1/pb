<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html><meta name="robots" content="noarchive"><meta name="googlebot" content="noarchive">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:set var="message" scope="session" value="${sessionScope.message}"/>
<c:if test="${message == 1}">
	<script>alert("登录失败,请确认用户名或密码是否正确!")</script>
</c:if>
<style type="text/css">
<!--
body,td,th {
	color: #333333;
	font: 12px "微软雅黑";
	letter-spacing: 1px;
	word-spacing: 1px;
}
body {
	background-color: #FFFFFF;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #333333;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #333333;
}
a:hover {
	text-decoration: none;
	color: #333333;
}
a:active {
	text-decoration: none;
	color: #333333;
}
.white18 {
	font-size: 20px;
	font-weight: bold;
	color: #FFFFFF;
	font-family: "华文仿宋";
	line-height: 40px;
}
.white {
	font-size: 12px;
	color: #FFFFFF;
}
.username {
	padding: 3px;
	border: 1px solid #CCCCCC;
	height: 30px;
	font: 18px/22px "微软雅黑";
	color: #FF3300;
	background: #FFFFFF url(/static/images/nzcms_system_16.gif) no-repeat scroll right;
}
.dongru {
	font: 18px/28px "微软雅黑";
	color: #FFFFFF;
	background: #0066CC center center;
	height: 35px;
	width: 85px;
	border-style: none;
	CURSOR:hand

}
.userpassword {
	background-attachment: scroll;
	background-image: url(/static/images/nzcms_system_19.gif);
	background-repeat: no-repeat;
	background-position: right;
	background-color: #FFFFFF;
	padding: 3px;
	border: 1px solid #CCCCCC;
	height: 30px;
	font-size: 18px;
	line-height: 22px;
	color: #FF3300;
}
.number {
	padding: 3px;
	height: 22px;
	border: 1px solid #CCCCCC;
	
	
}
.nzcms {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #EBF5FD;
	padding-right: 5px;
	padding-left: 5px;
}
.red {
	color: #FF0000;
}
.red14 {
	font-size: 14px;
	font-weight: bold;
	color: #FF0000;
}
.z18 {	font-size: 18px;
}
.z24 {
	font-size: 24px;
	color: #333333;
}
.kk {
	border: 1px solid #7CC2F6;
	background-attachment: scroll;
	background-color: #FFFFFF;
	background-image: url(/static/images/nzcms_system_05.gif);
	background-repeat: repeat-x;
	background-position: top;
}
.BG {
	background-attachment: scroll;
	background-color: #FFFFFF;
	background-image: url(/static/images/nzcms_system_05.gif);
	background-repeat: repeat-x;
	background-position: top;
}

-->


</style>
<BODY> 


<script language="javascript" src="/static/js/validator.js"></script>
<table width="100%" height="67"  border="0" align="center" cellpadding="0" cellspacing="0" background="/static/images/nzcms_system_02.gif" bgcolor="#0967AF">
  <tr>
    <td width="309" align="left" background="/static/images/nzcms_system_01.gif">&nbsp;</td>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="right" valign="middle">&nbsp;</td>
  </tr>
</table>
<table width="100%" height="1"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#00309C">
  <tr>
    <td align="center" valign="middle"></td>
  </tr>
</table>


<table width="100%" height="86%" border="0" align="center" cellpadding="0" cellspacing="0" class="BG">
  <tr>
    <td width="10%" align="left" valign="top" >&nbsp;</td>
    <td width="35%" align="right" valign="middle"><img src="/static/images/nzcms_system_10.gif"></td>
    <td align="left" valign="middle"><table width="300" border="0" cellpadding="3" cellspacing="0" >
      <form name="form" method="post" action="/admin/check_adminLogin" onSubmit="return Validator.Validate(this,3)">
      <tr>
        <td width="70" height="50" align="right" class="z18">帐号：</td>
        <td align="left"><input name="adminname" type="text" class="username" id="username" style="width:135px" size="20" datatype="Require"  msg="请填写！"></td>
      </tr>
      <tr>
        <td height="50" align="right" class="z18">密码：</td>
        <td align="left"><input name="password" type="password" class="userpassword" id="userpassword" style="width:135px" size="20" datatype="Require"  msg="请填写！"></td>
      </tr>
      <tr>
        <td height="50" align="right">&nbsp;</td>
        <td align="left"><label>
          <input name="Submit" type="submit" class="dongru" value=" 登 录 ">
        </label></td>
      </tr></form>
    </table></td>
  </tr>
</table>
<table width="100%" height="28"  border="0" align="center" cellpadding="0" cellspacing="0" background="/static/images/nzcms_system_26.gif" bgcolor="#0967AF">
  <tr>
    <td align="left" valign="middle" class="nzcms">&nbsp;</td>
    <td align="center" valign="middle" class="nzcms">&nbsp;</td>
    <td align="right" valign="middle" class="nzcms">&nbsp;</td>
  </tr>
</table>
<div style="DISPLAY:none">Copyright Right By 辽宁科技学院 </div>
</body>
</html>
