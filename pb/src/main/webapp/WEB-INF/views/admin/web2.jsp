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

<table width="100%"  border="0" align="center" cellpadding="5" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#C4D8ED">
  <form name="myform" method="post" action="/admin/update_setting" onSubmit="return Validator.Validate(this,3)">
    <tr bgcolor="#D2E8F6">
      <td height="40" colspan="2" align="center" class="nzcms_table_top" >网站优化信息设置</td>
    </tr>
     <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
    </tr>
     <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
      <td height="2" colspan="2" align="right" bgcolor="#C4D8ED"></td>
    </tr>
     <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
      <td height="25" width="100" align="right">网站标题：</td>
      <td><textarea name="title" cols="70" rows="5" id="title">${setting.pbTitle}</textarea>
          <br />
          <span class="shuoming">字符请用_分隔开</span></td>
    </tr>
     <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
      <td height="25" align="right">关键字词：<br /></td>
      <td><textarea name="keywords" cols="70" rows="5" id="keywords">${setting.pbKeyword}</textarea>
          <br />
          <span class="shuoming">字符请用, 分隔开</span></td>
    </tr>
     <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
      <td height="25" align="right">网站描述：<br />      </td>
      <td><textarea name="describe" cols="70" rows="5" id="description">${setting.pbDescribe}</textarea>
          <br />
          <span class="shuoming">字符请用,分隔开</span></td>
    </tr>
     <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
      <td height="25" align="right">网页底部：</td>
      <td><textarea name="bottom" cols="70" rows="5" id="ms">${setting.pbBottom}</textarea>
        <font class="red"><br />
        </font><span class="shuoming">支持HTML代码，&lt;br&gt;换行代码&nbsp;&nbsp;&amp;nbsp; 空格代码</span></td>
    </tr>

     <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
      <td align="right">&nbsp;</td>
      <td width="878"><input name="Submit" type="submit" class="button" value=" 提交 ">
          &nbsp;
          <input name="Submit3" type="button" class="button" onclick="history.go(-1);" value=" 返 回 " /></td>
    </tr>
  </form>
</table>

