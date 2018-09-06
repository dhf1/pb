<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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


<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#C4D8ED">
<tr bgcolor="#f0f0f0">
  <td height="40" align="center" class="nzcms_table_top"><a href="?">全部</a></td>
  </tr>
  <tr align="center" bgcolor="#FFFFFF">
    <td height="35" colspan="6" align="left" valign="top">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#C9DEFA">
  <form action="/admin/delMultipleArticle" method="post" name="myform" id="myform">
    <tr align="center" bgcolor="#C9DEFA">
      <td width="4%" class="nzcms_table_top2">选择</td>
      <td class="nzcms_table_top2">标题</td> 
      <td width="8%" class="nzcms_table_top2"><a href="?day=1">时间</a></td>
      <td width="15%" class="nzcms_table_top2">作者</td>
      <td width="4%" align="center" class="nzcms_table_top2">推荐</td>
      <td width="4%" class="nzcms_table_top2">显示</td>
      <td width="4%" class="nzcms_table_top2">修改</td>
      <td width="4%" class="nzcms_table_top2">删除</td>
    </tr>
    
    <c:forEach items="${pbArticles.data}" var="pb_article">
	    <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
	      <td height="30" align="center"><input name="id" type="checkbox" id="id" value="${pb_article.id}" onclick="javascript:changecolor(this.name);" /></td>
	      <td height="30" align="left">&nbsp;<a href="/admin/modify_article?id=${pb_article.id}" target="_blank">${pb_article.title}</a></td>
	      <td align="center"><fmt:formatDate value="${pb_article.updatetime}" /></td>
	      <td align="center">${pb_article.author}</td>
	      <td align="center">
	          	<c:if test="${not pb_article.recommend}">否</c:if>
	          	<c:if test="${pb_article.recommend}">是</c:if>
	      </td>
	      <td align="center">
	      		<c:if test="${not pb_article.showPaper}"><font class="book_hs">否</font></c:if>
	          	<c:if test="${pb_article.showPaper}"><font class="book_kk">显</font></c:if>
	          </td>
	      <td align="center"><a href="/admin/modify_article?id=${pb_article.id}" target="_blank">编辑</a></td>
	      <td align="center"><a href="/admin/del_article?article_id=${pb_article.id}" onclick="return confirm('您确定要删除吗？');">删</a></td>
	    </tr>
    </c:forEach>
    
     <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
      <td height="30" colspan="8"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td align="left">&nbsp;&nbsp;
                <input name="button" type="button" class="button" onclick="selectAll(document.myform)" value="全选" />
                <input name="button" type="button" class="button" onclick="selectOther(document.myform)" value="反选" />
                <input name="reset" type="reset" class="button" value="全部取消" />
                <input name="Submit" type="button" class="button" onclick="history.go(-1);" value=" 返 回 " />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input name="Submit" type="submit" class="button" value="×删除选中的信息" onclick="return confirm('您确定要删除吗？删除后将无法恢复，请谨慎操作！');" />          </td>
          <td align="right">&nbsp;&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </form>
  <tr align="center">
    <td height="25" colspan="8" class="nzcms_table_top"><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" by:nzcms·ningzhi.net "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/css.css" rel="stylesheet" type="text/css">
<link href="css/css_2.css" rel="stylesheet" type="text/css">
<p>

<table border=0 align=center>
<form method=get onsubmit="document.location = 'http://www.ningzhi.net/demo/19zt/nz0808/web2/index.asp?txt=2&Page='+ this.page.value;return false;"><TR>
<TD align=right>
<p align=center>
<font class='nzcmspage'><a href="/admin/get_articleList_all?category_id=${category_id}&draw=0">首页</a></font> 
<font class='nzcmspage'>
	<c:if test="${pbArticles.draw > 0}">
		<a href="/admin/get_articleList_all?category_id=${category_id}&start=${(pbArticles.draw-1)*10}&draw=${pbArticles.draw-1}" target="_self">上一页</a>
	</c:if>
</font> 
<font class='nzcmspage'>
	<c:if test="${pbArticles.draw < (pbArticles.total_page-1)}">
		<a href="/admin/get_articleList_all?category_id=${category_id}&start=${(pbArticles.draw+1)*10}&draw=${pbArticles.draw+1}" target="_self">下一页</a>
	</c:if>
</font> 
<font class='nzcmspage'><a href="/admin/get_articleList_all?category_id=${category_id}&draw=${pbArticles.total_page-1}">尾页</a></font> 
 <font class='nzcmspage'>页次：<c:if test="${pbArticles.total_page == 0}">0</c:if> <c:if test="${pbArticles.total_page != 0}">${pbArticles.draw+1}</c:if>/${pbArticles.total_page}页</font>
 <font class='nzcmspage'>共有${pbArticles.total}条</font>
</TR></form>
</table>


<p></td>
  </tr>
</table></td>
  </tr>
</table>
