<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../admin_css/css.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<script language="javascript" src="/static/js/validator.js"></script>
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

<table width="100%"  border="1" align="center" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#C4D8ED">
        <form action="/admin/add_admin" method="post" name="form" id="form" onSubmit="return Validator.Validate(this,3)">
          <tr bgcolor="#D2E8F6">
            <td height="40" colspan="2" align="center" bgcolor="#E4EDF9" class="nzcms_table_top">添加管理员</td>
          </tr>
          <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
            <td width="120" height="30" align="center" bgcolor="#E4EDF9">帐号：</td>
            <td height="30"><input name="adminname" type="text" class="input" id="username" datatype="Require"  msg="请填写管理帐号！" />
            <font color="red">*</font></td>
          </tr>
          <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
            <td height="30" align="center" bgcolor="#E4EDF9">密码：</td>
            <td height="30"><input name="password" type="password" class="input" id="userpassword" datatype="Require"  msg="请填写管理密码！" />
              <font color="red">*</font></td>
          </tr>
          <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
            <td height="30" align="center" bgcolor="#E4EDF9">&nbsp;</td>
            <td height="30"><input name="Submit22" type="submit" class="button" value=" 提 交 " /></td>
          </tr>
        </form>
</table>
      <table width="0" height="6" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td></td>
      </tr>
    </table>
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
        <tr>
          <td align="center" valign="top">
              <table width="100%"  border="1" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#C4D8ED">
                <tr bgcolor="#D2E8F6">
                  <td height="40" colspan="3" align="center" bgcolor="#E4EDF9" class="nzcms_table_top">管理管理员</td>
                </tr>
                <tr align="center" bgcolor="#FFFFFF">
                  <td width="20%" bgcolor="#FFFFFF" class="nzcms_table_top2">用户名</td>
                  <td align="left" bgcolor="#FFFFFF" class="nzcms_table_top2">密码</td>
                  <td bgcolor="#FFFFFF" class="nzcms_table_top2">删除</td>
                </tr>
                
                
                  <c:forEach items="${pbAdmins.data}" var="admin">
	                  <form name="myform" method="post" action="/admin/update_admin" onSubmit="return Validator.Validate(this,3)">
		                  <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
		                    <td height="30" align="center" bgcolor="#E4EDF9"><input name="id" type="hidden" id="id" value="${admin.id}">
		                    <input name="adminname" type="text" class="input" id="username" value="${admin.adminname}" datatype="Require"  msg="请填写管理帐号！" /></td>
		                    <td height="30" align="left" bgcolor="#FFFFFF"><input name="password" type="password" class="input" id="userpassword" >
		                    <font color="#FF0000">如不修改密码请留空</font>
		                    <input name="Submit" type="submit" class="button" value=" 修 改 " /></td>
		                    <td height="30" align="center" bgcolor="#FFFFFF"><a href="/admin/del_admin?id=${admin.id}" target="_self" onClick="return confirm('您确定要删除吗？');">删除</a></td>
		                  </tr>
	                  </form>
                  </c:forEach>
                <tr align="center" bgcolor="#FFFFFF">
                  <td height="35" colspan="3"><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" by:nzcms·ningzhi.net "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<p>

<table border=0 align=center>
<form method=get onsubmit="document.location = 'http://www.ningzhi.net/demo/19zt/nz0808/web2/index.asp?txt=2&Page='+ this.page.value;return false;"><TR>
<TD align=right>
<p align=center>
<font class='nzcmspage'><a href="/admin/get_adminList?draw=0">首页</a></font> 
<font class='nzcmspage'>
	<c:if test="${pbAdmins.draw > 0}">
		<a href="/admin/get_adminList?start=${(pbAdmins.draw-1)*10}&draw=${pbAdmins.draw-1}" target="_self">上一页</a>
	</c:if>
</font> 
<font class='nzcmspage'>
	<c:if test="${pbAdmins.draw < (pbAdmins.total_page-1)}">
		<a href="/admin/get_adminList?start=${(pbAdmins.draw+1)*10}&draw=${pbAdmins.draw+1}" target="_self">下一页</a>
	</c:if>
</font> 
<font class='nzcmspage'><a href="/admin/get_adminList?draw=${pbAdmins.total_page-1}">尾页</a></font> 
 <font class='nzcmspage'>页次：<c:if test="${pbAdmins.total_page == 0}">0</c:if> <c:if test="${pbAdmins.total_page != 0}">${pbAdmins.draw+1}</c:if>/${pbAdmins.total_page}页</font>
 <font class='nzcmspage'>共有${pbAdmins.total}条</font>
</TR></form>
</table>


<p></td>
                </tr>
            </table></td>
        </tr>
</table>

