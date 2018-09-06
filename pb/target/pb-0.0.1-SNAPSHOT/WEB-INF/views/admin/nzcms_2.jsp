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

        <tr bgcolor="#D2E8F6">
          <td height="40" align="center" bgcolor="#E4EDF9" class="nzcms_table_top">信息管理</td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td height="30" bgcolor="#FFFFFF" >
		  
		  
		  
	
    <table width="98%" border="0" cellpadding="8" cellspacing="0" bgcolor="#FFFFFF" class="xux">
      <tr>
        <td width="3%"><img src="/static/images/wenj.gif" alt="nzcms" /></td>
        <td><strong><font color="#FF6600">大栏目&nbsp;&nbsp;</font></strong>&nbsp;&nbsp;<img src="/static/images/addinfo.gif" alt="添加下级栏目" border="0" />&nbsp;<a href="javascript:Display(notes_dj559)">增加小类别</a></td>
        </tr>
    </table>
	
    <table width="98%"  border="0" cellpadding="8" cellspacing="0" bgcolor="#F8F8F8">
      <form action="/admin/add_category" method="post" name="myform" id="myform" onSubmit="return Validator.Validate(this,3)">
        <tr id='notes_dj559' style='DISPLAY: none'>
          <td height="25" align="left">名称：
            <input name="categoryname" type="text" id="sort_name" datatype="Require"  msg="请填写类别名称！" /> 
            顺序：
            <input name="order" type="text" id="sx" size="10" datatype="Number"  msg="请填写类别排列顺序[必须为数字]！" />
            属性：
            <label>
            <select name="property" id="pic">
              <option value="0">新闻模式</option>
              <option value="1">图片模式</option>
            </select>
            </label>
              <input type="submit" name="Submit" value=" 添加 " class="button" />
            &nbsp;&nbsp;<a href="javascript:Display(notes_dj559)"><img src="/static/images/nzcms_close.gif" alt="关闭" border="0" /></a></td>
          </tr>
      </form>
    </table>





<c:forEach items="${pbCategoryResults}" var="category">
<table width="98%" border="0" align="center" cellpadding="5" cellspacing="0" bgcolor="#FFFFFF" class="xux">
  <tr>
    <td height="35" align="left">&nbsp;&nbsp;<font color="gray">┣</font>&nbsp;<a href="javascript:Display(notes_${category.pbCategory.id})">${category.pbCategory.categoryname}&nbsp;{修改}</a></td>
    <td width="18%" align="left">模式：
    	<c:if test="${category.pbCategory.property == 0}">新闻模式</c:if>
    	<c:if test="${category.pbCategory.property == 1}">图片模式</c:if>
    </td>
    <td width="18%" align="left"  >排号：${category.pbCategory.sort}</td>
    <td width="18%" align="left"  >ID：${category.pbCategory.id}</td>
    <td width="18%" align="left"  ><a href="/admin/del_category?category_id=${category.pbCategory.id}" onClick="return confirm('新闻大类别修改名称就可以，一般情况下不需要删除!删除后本类里的所有信息将删除！！！确认删除吗？');">删除此类别？</a></td>
  </tr>
</table>
<table width="98%"  border="0" cellpadding="5" cellspacing="0" class="zfb" id='notes_${category.pbCategory.id}' style='DISPLAY: none'>
  <form action="/admin/update_category" method="post" name="form3" id="form3" onSubmit="return Validator.Validate(this,3)">
    <tr>
      <td width="10%" height="30" align="center" scope="col"><a href="javascript:Display(notes_dj2561)"><img src="/static/images/nzcms_close.gif" alt="关闭" border="0" /></a></td>
      <td height="30" class="14" scope="col">修改信息类别</td>
    </tr>
    <tr>
      <td height="30" align="center" scope="col">名称：</td>
      <td height="30" scope="col"><input name="categoryname" type="text" id="sort_name" value="${category.pbCategory.categoryname}" datatype="Require"  msg="请填写类别名称！" /></td>
    </tr>
    <tr>
      <td height="30" align="center" scope="row">顺序：</td>
      <td height="30"><input name="order" type="text" id="sx" value="${category.pbCategory.sort}" datatype="Number"  msg="请填写类别排列顺序[必须为数字]！" />
          <input name="id" type="hidden" id="id" value="${category.pbCategory.id}" /></td>
    </tr>
    <tr>
      <td height="30" align="center" scope="row">属性：</td>
      <td height="30"><select name="property" id="pic">
        <option value="0" <c:if test="${category.pbCategory.property == 0}">selected</c:if> >新闻模式</option>
        <option value="1" <c:if test="${category.pbCategory.property == 1}">selected</c:if>  >图片模式</option>
            </select></td>
    </tr>
    <tr>
      <td height="30" align="center" scope="row">操作：</td>
      <td height="30"><input name="Submit2" type="submit" class="button" value=" 修 改 " />
          <input name="Submit2" type="reset" class="button" value=" 重 置 " /></td>
    </tr>
    <tr>
      <th height="30" align="center">&nbsp;</th>
      <td height="30"><a href="/admin/del_category?category_id=${category.pbCategory.id}" onClick="return confirm('新闻大类别修改名称就可以，一般情况下不需要删除!删除后可能会引起前台调用错误！！！确认删除吗？');">删除此类别？</a></td>
    </tr>
  </form>
</table>
</c:forEach>
</td></tr></table>

