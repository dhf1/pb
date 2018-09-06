<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/static/admin_css/css.css" rel="stylesheet" type="text/css" />
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
        <tr bgcolor="#f0f0f0">
          <td height="40" align="center" bgcolor="#E4EDF9" class="nzcms_table_top">管理网站信息</td>
        </tr>
        <tr align="center" bgcolor="#FFFFFF">
          <td height="35" align="left">              <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
                <tr>
                  <td height="25" valign="top">
                      <table width="0" height="6" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td></td>
                        </tr>
                      </table>
                      <table width=98% border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr align="center">
                          <td height="22" colspan=6 align="left"  ><font color="#FF6600"><b><font color="#FF6600"><img src="/static/images/wenj.gif">&nbsp;大栏目 </font></b></font> <font color="#FF6600"><b><font color="#FF6600"> </font></b></font> <font color="#FF6600"><b><font color="#FF6600"> </font></b></font> </td>
                        </tr>
                        
                        <c:forEach items="${pbCategoryResults}" var="pbCategoryResult">
                        <tr>
                          <td width=78% height="30" align=left valign="middle" class="xux">&nbsp;&nbsp;<font color="gray">┣</font>&nbsp;<a href="/admin/get_articleList_all?category_id=${pbCategoryResult.pbCategory.id}">${pbCategoryResult.pbCategory.categoryname}</a></td>
                          <td width=22% align=center valign="middle" class="xux">
                            本栏目数据<font class="red">${pbCategoryResult.count}</font>条</td>
                        </tr>
						</c:forEach>
						
                        <tr>
                          <td colspan=6 height=1 background="images/bj_x1.gif" ></td>
                        </tr>
                    </table>
                      
                  </td>
                </tr>
          </table></td>
        </tr>
      </table>

