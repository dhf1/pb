<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/static/admin_css/css.css" rel="stylesheet" type="text/css">
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/static/admin_css/css.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/static/admin_css/css.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="/static/js/validator.js"></script>
<style type="text/css">
<!--
.number {	padding: 3px;
	height: 22px;
	border: 1px solid #CCCCCC;
}
.username {	background-attachment: scroll;
	background-image: url(/static/images/nzcms_system_16.gif);
	background-repeat: no-repeat;
	background-position: right;
	background-color: #FFFFFF;
	padding: 3px;
	border: 1px solid #CCCCCC;
	height: 24px;
}
.userpassword {	background-attachment: scroll;
	background-image: url(/static/images/nzcms_system_19.gif);
	background-repeat: no-repeat;
	background-position: right;
	background-color: #FFFFFF;
	padding: 3px;
	border: 1px solid #CCCCCC;
	height: 24px;
}
.whitetitle {
	font: 18px "微软雅黑";
	color: #FFFFFF;
}
-->
</style>

<!--后台调用 -->





<script language="JavaScript">
function Display(ID)
{
 if( ID.style.display == 'none' )
{
ID.style.display = '' ;
}
else	
{
ID.style.display = 'none' ;
}
}
</script>

<script>
function selectAll(obj)
{
for(var i = 0;i<obj.elements.length;i++)
if(obj.elements[i].type == "checkbox")
obj.elements[i].checked = true;
}
function selectOther(obj)
{
for(var i = 0;i<obj.elements.length;i++)
if(obj.elements[i].type == "checkbox" )
{
if(!obj.elements[i].checked)
obj.elements[i].checked = true;
else
obj.elements[i].checked = false;

}
}
</script>

<script language="javascript">
function changecolor(obj)
{
   e = event.srcElement
   if(e.checked==true)
   {
     e = e.parentElement
     e = e.parentElement
     e.style.background = "#C1D2EE"
    }
    else
    {
      e = e.parentElement
      e = e.parentElement
      e.style.background = "#ffffff"
     }
} 

</script>
<link rel="shortcut icon" href="/static/nz.ico" />
<title>《&nbsp;${sessionScope.pbAdmin.adminname}&nbsp;》，您好！欢迎您登录后台管理 - </title>

<script language="JavaScript">
function Display(ID)
{
 if( ID.style.display == 'none' )
{
ID.style.display = '' ;
}
else	
{
ID.style.display = 'none' ;
}
}
</script>

<script>
function selectAll(obj)
{
for(var i = 0;i<obj.elements.length;i++)
if(obj.elements[i].type == "checkbox")
obj.elements[i].checked = true;
}
function selectOther(obj)
{
for(var i = 0;i<obj.elements.length;i++)
if(obj.elements[i].type == "checkbox" )
{
if(!obj.elements[i].checked)
obj.elements[i].checked = true;
else
obj.elements[i].checked = false;

}
}
</script>

<script language="javascript">
function changecolor(obj)
{
   e = event.srcElement
   if(e.checked==true)
   {
     e = e.parentElement
     e = e.parentElement
     e.style.background = "#C1D2EE"
    }
    else
    {
      e = e.parentElement
      e = e.parentElement
      e.style.background = "#ffffff"
     }
} 

</script>


<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" background="/static/images/nzcms_top_02.gif" bgcolor="#2A4A87">
<tr>
    <td width="200" valign="top"><a href="manage.asp"></a><a href="/admin/index"><img src="/static/images/logo.jpg" alt="后台标识" border="0"></a></td>
    <td align="left" valign="bottom" class="white"><table height="30" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="56" align="center" background="/static/images/menu02.gif"><a href="/admin/index" class="left2">首页</a></td>
        <td width="56" align="center" background="/static/images/menu01.gif"><a href="/admin/setting" class="left2">设置</a></td>
        <td width="56" align="center"background="/static/images/menu01.gif"><a href="/admin/manager" class="left2">用户</a></td>
        <td width="56" align="center"background="/static/images/menu01.gif"><a href="/admin/information" class="left2">信息</a></td>		
        
        <td width="56" align="center" background="/static/images/menu01.gif"><a href="/index" target="_blank" class="left2">前台</a></td>
        <td width="56" align="center" background="/static/images/menu01.gif"><a href="/admin/logout" onclick="return confirm('您确定退出操作吗？');" class="left2">退出</a></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="100%" height="5" border="0" cellpadding="5" cellspacing="0" bgcolor="#003366">
  <tr>
    <td align="right"></td>
  </tr>
</table>


<!-- 后台调用-->

<table width="100%" height="85%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="200" align="center" valign="top" bgcolor="#C9DEFA"><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/static/admin_css/css.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="/static/js/validator.js"></script>
<style type="text/css">
<!--
.number {	padding: 3px;
	height: 22px;
	border: 1px solid #CCCCCC;
}
.username {	background-attachment: scroll;
	background-image: url(/static/images/nzcms_system_16.gif);
	background-repeat: no-repeat;
	background-position: right;
	background-color: #FFFFFF;
	padding: 3px;
	border: 1px solid #CCCCCC;
	height: 24px;
}
.userpassword {	background-attachment: scroll;
	background-image: url(/static/images/nzcms_system_19.gif);
	background-repeat: no-repeat;
	background-position: right;
	background-color: #FFFFFF;
	padding: 3px;
	border: 1px solid #CCCCCC;
	height: 24px;
}
.whitetitle {
	font: 18px "微软雅黑";
	color: #FFFFFF;
}
-->
</style>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/static/admin_css/css.css" rel="stylesheet" type="text/css">


<table width="200" height="45" border="0" cellpadding="0" cellspacing="0" background="/static/images/nzsoft_14.gif" id="1">
  <tr> <td width="55" align="center">&nbsp;</td>
    <td class="left14">Welcome</td>
  </tr>
</table>
<table width="180" border="0" cellpadding="0" cellspacing="0" bgcolor="#C9DEFA">
        <tr>
          <td align="center" class="white48"><img src="/static/images/nzcms_ad.jpg"></td>
        </tr>
</table></td>
    <td align="center" valign="top">
      <table width="0" height="6" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td></td>
      </tr>
    </table>



<!-- 这里是站点提醒功能OK-->


<table width="98%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">

        <tr>
          <td height="90" align="center" bgcolor="#FFFFFF" ><iframe src="/admin/getSystemInfo" name="sina_roll" width="100%" marginwidth="0" height="500" marginheight="10" scrolling="no" frameborder="no" id="sina_roll" border="10"></iframe></td>
        </tr>
      </table>
    </td>
  </tr>
</table>


