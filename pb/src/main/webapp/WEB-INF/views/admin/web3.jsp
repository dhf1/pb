<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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

      <table width="100%" border="1" align="center" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#C4D8ED" class="tableBorder">
        <form name="form2" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_add">
          <tr>
            <td height="40" colspan="5" align="center" bgcolor="#E4EDF9" class="nzcms_table_top">添加友情链接</td>
          </tr>
          <tr bgcolor="#F9F9F9">
            <td width="30%" height="20" align="center" bgcolor="#E4EDF9">网站名称 </td>
            <td height="20" align="center" bgcolor="#E4EDF9">网站地址 </td>
            <td width="8%" height="20" align="center" bgcolor="#E4EDF9">排 序 </td>
            <td width="8%" height="20" align="center" bgcolor="#E4EDF9">操 作 </td>
            <td width="8%" align="center" bgcolor="#E4EDF9">&nbsp;</td>
          </tr>
          <tr onMouseOver="this.bgColor='#FFFF00';" onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=11 size="5"></td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit2" type="submit" class="button" value="添加"></td>
            <td align="center" bgcolor="#FFFFFF">&nbsp;</td>
          </tr>
        </form>
</table>
      <table width="0" height="6" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td></td>
        </tr>
      </table>
      <table width="100%" border="1" align="center" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#C4D8ED" class="tableBorder">
        <tr>
          <td height="40" colspan="5" align="center" bgcolor="#E4EDF9" class="nzcms_table_top">友情链接列表</td>
        </tr>
        <tr bgcolor="#f9f9f9">
          <td width="30%" height="25" align="center" bgcolor="#f9f9f9">网站名称</td>
          <td align="center" bgcolor="#f9f9f9">网站地址</td>
          <td width="8%" align="center" bgcolor="#f9f9f9">排 序</td>
          <td width="8%" align="center" bgcolor="#f9f9f9">操 作</td>
          <td width="8%" align="center" bgcolor="#f9f9f9">删除</td>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=156">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="中国政府网">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.gov.cn" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=1 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=156"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=157">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="中国外交部">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.mfa.gov.cn/chn/gxh/tyb/" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=2 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=157"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=158">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="看中国网站">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.showchina.org/" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=3 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=158"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=159">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="西部大开发">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.cnwest.cc/" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=4 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=159"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=160">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="西藏自治区">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.showchina.org/zt/xzjx/" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=5 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=160"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=161">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="乌鲁木齐">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.urumqi.gov.cn" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=6 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=161"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=162">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="中国简况">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.china.com.cn/aboutchina/2006zgjk/node_7003699.htm" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=7 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=162"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=184">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="宁志公司">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.ningzhi.net" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=8 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=184"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=163">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="上饶之窗">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.srzc.com/" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=9 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=163"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
        <tr bgcolor="#f0f0f0">
          <form name="myform" method="post" action="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_edit&id=185">
            <td height="30" align="center" bgcolor="#FFFFFF"><input name="name" type="text" class="input" id="name" value="宁志网络">            </td>
            <td align="left" bgcolor="#FFFFFF"><input name="url" type="text" class="input" id="url" value="http://www.ningzhi.net" size="40">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="sx" type="text" class="input" id="sx" value=10 size="5">            </td>
            <td align="center" bgcolor="#FFFFFF"><input name="Submit" type="submit" class="button" value="修改"></td>
            <td align="center" bgcolor="#FFFFFF"><a href="%6E%7A%63%6D%73%5F%73%61%76%65%5F%69%6E%66%6F%2E%61%73%70?action=link_del&amp;id=185"><font color="#FF0000">删除</font></a></td>
          </form>
        </tr>
        
</table>
      <table width="0" height="6" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td></td>
        </tr>
      </table>

