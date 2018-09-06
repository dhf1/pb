<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/static/admin_css/css.css" rel="stylesheet" type="text/css" />

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

</script><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<table width="100%" height="100%" border="0" align="center" cellpadding="5" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#C4D8ED">


  <tr>
    <td height="40" colspan="2" align="center" class="nzcms_table_top" >操作系统检测情况</td>
    <td height="40" align="center" class="nzcms_table_top" >万年日历</td>
  </tr>
  <tr>
    <td height="30" align="left" bgcolor="#E4EDF9"><b>服务器检测</b></td>
    <td height="30" align="left" bgcolor="#E4EDF9">&nbsp;</td>
    <td rowspan="15" align="left" bgcolor="#E4EDF9"><iframe src="/static/html/rili.html" name="sina_roll" width="100%" marginwidth="0" height="100%" marginheight="10" scrolling="no" frameborder="no" id="sina_roll" border="10"></iframe>      </a></td>
  </tr>
  <tr>
    <td width="20%" height="30" align="right" bgcolor="#E4EDF9">客户端地址</a></td>
    <td width="30%" height="30" bgcolor="#FFFFFF">${pbSystemInfo.remoteAddr}</td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">客户端名</td>
    <td height="30" bgcolor="#FFFFFF">${pbSystemInfo.remoteHost}</td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">服务器时间</td>
    <td height="30" bgcolor="#FFFFFF">${pbSystemInfo.server_time}</td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">服务器端口</td>
    <td height="30" bgcolor="#FFFFFF">${pbSystemInfo.serverPort}</td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">服务器名</a></td>
    <td height="30" bgcolor="#FFFFFF">${pbSystemInfo.serverName}</td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9"></a></td>
    <td height="30" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="left" bgcolor="#E4EDF9"><b>主要组件检测</b></td>
    <td height="30" align="left" bgcolor="#E4EDF9">&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">服务器环境</a></td>
    <td height="30" bgcolor="#FFFFFF">JavaWeb</td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">上传图片</td>
    <td height="30" bgcolor="#FFFFFF"><font color=green><b>√</b></font></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">数据库</td>
    <td height="30" bgcolor="#FFFFFF">mysql</td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">状态</a></td>
    <td height="30" bgcolor="#FFFFFF">稳定</td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">文件读写</td>
    <td height="30" bgcolor="#FFFFFF">
      <b>√</b></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#E4EDF9">无组件上传支持</td>
    <td height="30" bgcolor="#FFFFFF"><font color=green><b>√</b></font>
        </span></td>
  </tr>
</table>

