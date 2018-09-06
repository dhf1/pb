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


<table width="100%"  border="1" align="center" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#C4D8ED">
        <form action='<c:if test="${article==null}">/admin/add_article.action</c:if><c:if test="${article!=null}">/admin/update_article</c:if>' method="post" name="myform" id="myform" onSubmit="return Validator.Validate(this,3)" enctype="multipart/form-data">
        <tr bgcolor="#D2E8F6">
          <td height="40" align="center" bgcolor="#E4EDF9" class="nzcms_table_top"><input name="id" type="hidden" value="${article.id}"/></td>
          <td height="40" align="center" bgcolor="#E4EDF9" class="nzcms_table_top"><c:if test="${article!=null}">修改文章</c:if><c:if test="${article==null}">添加文章</c:if></td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td width="10%" height="30" align="center" bgcolor="#E4EDF9" >标题：</td>
          <td height="30" colspan="2"><input name="title" type="text" value='<c:if test="${article!=null}">${article.title}</c:if>' class="input" id="title" size="60" dataType="Require"  msg="请填写信息标题！">
            <font color="red">*</font><font color="gray">信息标题</font></td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td width="10%" height="30" align="center" bgcolor="#E4EDF9" >栏目：</td>
          <td height="30" colspan="2"><select name="category" value='<c:if test="${article!=null}">${article.category}</c:if>' id="sort_name_id" dataType="Require"  msg="请选择相关栏目！">
              
              <c:forEach items="${categoryList}" var="category">
              	<option value="${category.pbCategory.id}" <c:if test="${article != null && article.category == category.pbCategory.id}">selected</c:if>><font color="#f0f0f0"> ├</font>${category.pbCategory.categoryname}</option>
              </c:forEach>
              
              
            </select>
            <font color="red">*</font> <font color="gray">信息所属的相关栏目</font> </td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td width="10%" height="30" align="center" bgcolor="#E4EDF9" >作者：</td>
          <td height="30" colspan="2"><input name="author" value='<c:if test="${article!=null}">${article.author}</c:if>' type="text" class="input" id="sub_user" value="admin"  dataType="Require"  msg="作者不能为空！">
            <font color="red">*</font> <FONT color=gray>发布信息单位或者摘自单位名称！</FONT></td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td width="10%" height="30" align="center" bgcolor="#E4EDF9" >时间：</td>
          <td height="30" colspan="2" valign="middle" ><input name="create_time" type="text" class="form2" id="dateandtime" <c:if test="${article!=null }">value="<fmt:formatDate value='${article.updatetime}' />"</c:if>/>
          	<font color="gray">(输入的日期的格式，例：2018-01-01、2018-1-1两种)</font>
          </td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td width="10%" height="30" align="center" bgcolor="#E4EDF9">推荐：</td>
          <td height="30" colspan="2">
          	<input name="recommend" type="checkbox" id="tuijian" value="1" <c:if test="${article!=null }"><c:if test="${article.recommend==true }">checked="checked"</c:if></c:if> <c:if test="${article==null }"></c:if>/>
            <font color="gray">(打&quot;√&quot;则为推荐)</font>
          </td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td width="10%" height="30" align="center" bgcolor="#E4EDF9" >显示：</td>
          <td height="30" colspan="2"><input name="show" type="checkbox" id="pass" value="1" checked>
            <font color="gray">(打&quot;√&quot;则会在网页上面显示，否则只在后台显示)</font></td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td width="10%" height="30" align="center" bgcolor="#E4EDF9" >点击：</td>
          <td height="30" colspan="2" valign="middle"><input name="click" type="text" class="input" id="click" value='<c:if test="${article!=null }">${article.click }</c:if><c:if test="${article==null }">1</c:if>' size="10" dataType="Number"  msg="点击次数不能为空，必须为数字！">
            <font color="red">*</font><FONT color=gray>点击次数，默认为1，如需手工填写，填写内容必须为数字！</FONT></td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td height="30" align="center" bgcolor="#E4EDF9">图片：</td>
          <td height="30" colspan="4" valign="middle" ><input type="file" name="picture" /></td></tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td height="30" align="center" bgcolor="#E4EDF9" >信息：</td>
          <td height="30" colspan="2" valign="top">
            <script charset="utf-8" src="/static/kindeditor/kindeditor-all-min.js"></script>
              <script charset="utf-8" src="/static/kindeditor/lang/zh-CN.js"></script>
              <script charset="utf-8" src="/static/js/prettify.js"></script>
              <script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="information"]', {
				cssPath : '/static/css/prettify.css',
				uploadJson : '/upload_json.jsp',
				fileManagerJson : '/file_manager_json.jsp',
				allowFileManager : true,
afterBlur : function() {
 this.sync();
 K.ctrl(document, 13, function() {
  K('form[name=myform]')[0].submit();
 });
 K.ctrl(this.edit.doc, 13, function() {
  K('form[name=myform]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	      </script>
              <textarea name="information" style="width:100%;height:380px;visibility:hidden;">
              <c:if test="${article!=null}">${article.information}</c:if>
              </textarea>
                        </td>
        </tr>
        <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
          <td width="10%" height="30" bgcolor="#E4EDF9" >&nbsp;</td>
          <td height="30" colspan="2"><input name="Submit" type="submit" class="button" value=" 提 交 ">
              <input name="Submit" type="reset" class="button" value=" 重 置 ">
            <input name="Submit" type="button" class="button" onClick="history.go(-1);" value=" 返 回 "></td>
        </tr></form>
      </table>