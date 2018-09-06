<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>

	<head>
		<link href="/static/css/css.css" rel="stylesheet" type="text/css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name=”renderer” content=”webkit”>
		<meta http-equiv=”X-UA-Compatible” content=”IE=Edge,chrome=1″ >
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
		<div style="height: 74px;background-image:url(/static/images/nzcms_dh3.jpg);background-color:#ff0000;">
		<table width="1200" height="74" border="0" align="center" cellpadding="0" cellspacing="0"  style="margin-bottom: 10px;">
			<tr>
				<td width="180" align="center" class="white"><img src="/static/images/left_bg2.jpg" width="170" height="74" /></td>
				<td align="left" class="white10">
					<a href="index" class="left">本站主页 </a>
					<c:forEach items="${requestScope.pbCategoryResults }" var="pbCategoryResult">
						&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="list?category_id=${pbCategoryResult.pbCategory.id }&property=${pbCategoryResult.pbCategory.property }" class="left">${pbCategoryResult.pbCategory.categoryname }</a>
					</c:forEach>
				</td>
			</tr>
		</table>
		</div>
		<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="margin-bottom: 15px;table-layout:fixed;">
			<tr>
				<td width="593" bgcolor="#FFFFFF" class="kk"><iframe src="/getCarouselArticle" name="sina_roll" width="100%" marginwidth="0" height="400" marginheight="0" scrolling="No" frameborder="No" id="sina_roll" border="0"></iframe></td>
				<td width="10" bgcolor="#FFFFFF"></td>
				<td align="center" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;" valign="top" background="/static/images/ding.gif" bgcolor="#FFFFFF" class="kk">
					<table height="20" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>
					<c:if test="${recommendPbArticles != null }">
					<a href="article?id=  ${recommendPbArticles[0].id }" target="_blank" title="${recommendPbArticles[0].title}" %>
						<font class="red24">${recommendPbArticles[0].title}</font>
					</a>
					</c:if>
					<table height="20" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>
					<table width="96%" height="2" border="0" cellpadding="0" cellspacing="0" class="dx">
						<tr>
							<td></td>
						</tr>
					</table>
					<table height="4" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>

					<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0" style="table-layout:fixed;">

						<c:forEach items="${requestScope.recommendPbArticles }" var="pbArticle">
							<tr>
								<td height="30" align="left" valign="middle" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">
									<a href="article?id=${pbArticle.id }" target="_blank" title="标题：${pbArticle.title }">· ${pbArticle.title } </a>
								</td>
								<td width="70"></td>
								<td width="70" align="left" valign="middle"><fmt:formatDate value="${pbArticle.updatetime}" /></td>
							</tr>
						</c:forEach>
					</table>
				</td>
			</tr>
		</table>
		<table width="1210" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
			<tr valign="top">
				<td align="left">
					<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
					<c:forEach items="${articleAllList}" var="articleAll" step="2" varStatus="status">
						<tr>
							<td align="center" valign="top">
								<table width="585" height="220" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="margin-bottom: 15px;">
									<tr>
										<td align="center" valign="top">
											<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="margin-bottom: 15px;">
												<tr>
													<td width="50" height="40" align="center" class="i_title"><img src="static/images/dq.jpg"></td>
													<td width="130" align="left" class="i_title">${articleAllList[status.index].categoryname}</td>
													<td align="right" class="i_title2">
														<a href="list?category_id=${articleAllList[status.index].categoryid}&property=${articleAllList[status.index].property}"><img src="/static/images/more.gif" alt="更多" width="56" height="19" border="0"></a>
													</td>
												</tr>
											</table>
											<table width="98%" height="24" border="0" align="center" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
												<c:forEach items="${articleAllList[status.index].articles}" var="article">
												<tr>
													<td height="30" align="left" valign="middle" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">&nbsp;<img src="/static/images/biao.gif">
														<a href="article?id=${article.id}" target="_blank">
															${article.title}</a>
													</td>
													<td width="35"></td>
													<td width="70" align="left" valign="middle"><fmt:formatDate value="${article.updatetime}" /></td>
												</tr>
												</c:forEach>
											</table>
										</td>
									</tr>
								</table>
							</td>

							<td align="center" valign="top">
								<table width="585" height="220" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="margin-bottom: 15px;">
									<tr>
										<td align="center" valign="top">
											<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="margin-bottom: 15px;">
												<tr>
													<td width="50" height="40" align="center" class="i_title"><img src="/static/images/dq.jpg"></td>
													<td width="130" align="left" class="i_title">${articleAllList[status.index+1].categoryname}</td>
													<td align="right" class="i_title2">
														<a href="list?category_id=${articleAllList[status.index+1].categoryid}&property=${articleAllList[status.index+1].property}"><img src="/static/images/more.gif" alt="更多" width="56" height="19" border="0"></a>
													</td>
												</tr>
											</table>
											<table width="98%" height="24" border="0" align="center" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
												<c:forEach items="${articleAllList[status.index+1].articles}" var="article">
												<tr>
													<td height="30" align="left" valign="middle" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">&nbsp;<img src="/static/images/biao.gif">
														<a href="article?id=${article.id}" target="_blank">
															${article.title}</a>
													</td>
													<td width="35"></td>
													<td width="70" align="left" valign="middle"><fmt:formatDate value="${article.updatetime}" /></td>
												</tr>
												</c:forEach>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</c:forEach>
					</table>
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
				<td width="60"><a href="/admin/index" ><font class="white">后台管理</font></a></td>
				<td width="80" align="center">
					<a href="#">
						<font class="white">返回顶部↑</font>
					</a>
				</td>
			</tr>
		</table>
		<table width="100%" border="0" align="center" cellpadding="15" cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td align="center" valign="top" class="end">${pbSetting.pbBottom} <br> 本站最佳浏览效果：1024*768分辨率/建议使用微软公司浏览器IE6.0以上&nbsp;&nbsp; <br>
					<script language="JavaScript" src="count.asp" type="text/javascript"></script>
					<br>
					<font color="#FFFFFF">By:Nzcms v5.1.01&nbsp;&nbsp;|&nbsp;&nbsp;110
					</font>
					<!--统计文件 -->
				</td>
			</tr>
		</table>
		<!--底部文件 -->

	</body>

</html>