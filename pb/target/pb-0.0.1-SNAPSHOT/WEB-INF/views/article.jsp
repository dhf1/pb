<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link href="/static/css/css.css" rel="stylesheet" type="text/css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="keywords" content="${pbSetting.pbKeyword}" />
		<meta name="description" content="${pbSetting.pbDescribe}" />
		
		<title>${pbSetting.pbTitle}</title>
	</head>

	<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

		<!-- 顶部-->
		<link rel="shortcut icon" href="/static/images/nz.ico" />
		<link href="/static/css/css.css" rel="stylesheet" type="text/css">

		<script language="JavaScript">
			function Display(ID) {
				if(ID.style.display == 'none') {
					ID.style.display = '';
				} else {
					ID.style.display = 'none';
				}

			}
		</script>
		<script language="javascript" src="/static/js/validator.js"></script>
		<table height="400" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center">&nbsp;</td>
			</tr>
		</table>
		<table width="100%" height="74" border="0" align="center" cellpadding="0" cellspacing="0" background="/static/images/nzcms_dh3.jpg" bgcolor="#FF0000" style="margin-bottom: 10px;">
			<tr>
				<td width="180" align="center" class="white"><img src="/static/images/left_bg2.jpg" width="170" height="74" /></td>
				<td align="left" class="white10">
					<a href="index" class="left">本站主页</a>
					<c:forEach items="${requestScope.pbCategoryResults }" var="pbCategoryResult">
						&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="list?category_id=${pbCategoryResult.pbCategory.id }&property=${pbCategoryResult.pbCategory.property }" class="left">${pbCategoryResult.pbCategory.categoryname }</a>
					</c:forEach>
				</td>
			</tr>
		</table>

		<table height="20" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td></td>
			</tr>
		</table>
		<table width="1200" border="0" align="center" cellpadding="1" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
			<tr>
				<td align="center" valign="top" bgcolor="#FFFFFF" class="bg_qc">
					<script>
						function z(v) {
							var z = document.getElementById("z")
							if(v == "b") {
								z.style.fontSize = "18px"
							}
							if(v == "m") {
								z.style.fontSize = "14px"
							}
							if(v == "s") {
								z.style.fontSize = "12px"
							}

						}
					</script>

					<table width="100%" height="27" border="0" cellpadding="8" cellspacing="0" bgcolor="#F6F6F6">
						<tr>
							<td class="p12">您的位置：
								<a href="index">首页</a>&nbsp;&gt;&gt;&nbsp;
								<a href="list?category_id=${requestScope.pbCategory.id }&property=${requestScope.pbCategory.property }">${requestScope.pbCategory.categoryname }</a>
							</td>
							<td width="220" align="right" class="p12">
								<!-- Baidu Button BEGIN -->
								<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
									<a class="bds_qzone"></a>
									<a class="bds_tsina"></a>
									<a class="bds_tqq"></a>
									<a class="bds_renren"></a>
									<a class="bds_t163"></a>
									<span class="bds_more">更多</span>
								</div>
								<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6494613"></script>
								<script type="text/javascript" id="bdshell_js"></script>
								<script type="text/javascript">
									document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date() / 3600000)
								</script>
							</td>
						</tr>
					</table>
					<table height="35" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>
					<table height="25" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="center" class="title30">${requestScope.pbArticle.title }</td>
						</tr>
					</table>
					<table height="35" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F6F6F6" class="dx">
						<tr>
							<td height="20" align="center">发布作者：${requestScope.pbArticle.author }&nbsp;&nbsp;&nbsp;发布时间：<fmt:formatDate value="${requestScope.pbArticle.updatetime }" />&nbsp;&nbsp;查看${requestScope.pbArticle.click }次</td>
						</tr>
					</table>

					<table height="15" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>

					<table width="95%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="left">
								<div class="z" id="z">
									${requestScope.pbArticle.information }</div>
							</td>
						</tr>
					</table>
					<table width="95%" height="60" border="0" cellpadding="0" cellspacing="0" class="dx">
						<tr>
							<td align="center" valign="middle"><input name="button" type=button onClick="window.location='javascript:window.print()'" value="打印此页"> &nbsp;&nbsp;&nbsp;&nbsp;
								<input name="button2" type=button onClick="window.location='#'" value="返回顶部"> &nbsp;&nbsp;&nbsp;&nbsp;
								<input name="button2" type="button" onClick="jscript:window.external.AddFavorite(document.location.href,document.title);" value="收藏本页" /> &nbsp;&nbsp;&nbsp;&nbsp;
								<input name="button2" type=button onClick="window.location='javascript:window.close();'" value="关闭窗口">
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href="/static/css/css.css" rel="stylesheet" type="text/css">
		<link href="css/css_2.css" rel="stylesheet" type="text/css">
		<table width="100%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" background="/static/images/end.gif">
			<tr>
				<td width="30" align="center">&nbsp;</td>
				<td align="left">&nbsp;</td>
				<td width="80" align="center">
					<a href="#">
						<font class="white">返回顶部↑</font>
					</a>
				</td>
			</tr>
		</table>
		<table width="100%" border="0" align="center" cellpadding="15" cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td align="center" valign="top" class="end">"${pbSetting.pbBottom}" 

					<br> 本站最佳浏览效果：1024*768分辨率/建议使用微软公司浏览器IE6.0以上&nbsp;&nbsp;

					<br>
					<script language="JavaScript" src="count.asp" type="text/javascript"></script>
					<br>
					<font color="#FFFFFF">By:Nzcms v5.1.01&nbsp;&nbsp;|&nbsp;&nbsp;110</font>
					<!--统计文件 -->
				</td>
			</tr>
		</table>
		<!--底部文件 -->

	</body>

</html>