<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="keywords" content="${pbSetting.pbKeyword}" />
		<meta name="description" content="${pbSetting.pbDescribe}" />
		
		<title>${pbSetting.pbTitle}</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="/static/css/css.css" rel="stylesheet" type="text/css">

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
					<c:forEach items="${pbCategoryResults}" var="category">
						&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="list?category_id=${category.pbCategory.id }&property=${category.pbCategory.property }" class="left">${category.pbCategory.categoryname }</a>
					</c:forEach>
				</td>
			</tr>
		</table>
		<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td align="center" valign="top">
					<table width="1200" border="0" align="center" cellpadding="0" cellspacing="10" bgcolor="#FFFFFF">
						<tr valign="top">
							<td width="320" align="center" valign="top" bgcolor="#FFFFFF" class="kk">
								<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
								<link href="/static/css/css.css" rel="stylesheet" type="text/css">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td><iframe src="/getCarouselArticle?type=0" name="sina_roll" width="100%" marginwidth="0" height="230" marginheight="0" scrolling="No" frameborder="No" id="sina_roll" border="0"></iframe></td>
									</tr>
								</table>
								<table height="8" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td></td>
									</tr>
								</table>
								<table width="100%" height="36" border="0" cellpadding="0" cellspacing="1" background="/static/images/nzcms_table_bg.gif">
									<tr>
										<td width="40" align="center">&nbsp;</td>
										<td align="left" class="white14B">推荐文章</td>
										<td align="center">&nbsp;</td>
									</tr>
								</table>
								<table width="100%" height="24" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="table-layout:fixed;">
									<c:forEach items="${requestScope.recommendPbArticles }" var="pbArticle">
										<tr>
											<td height="30" align="left" valign="middle" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">&nbsp;<img src="/static/images/biao.gif" width="7" height="7">
												<a href="article?id=${pbArticle.id }&title=${pbArticle.title }" target="_blank" title="标题：${pbArticle.title }&#13;点击：${pbArticle.click }次 &#13;时间：<fmt:formatDate value="${pbArticle.updatetime}" />">
													${pbArticle.title } </a>
											</td>
										</tr>
									</c:forEach>

								</table>
								<table height="8" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td></td>
									</tr>
								</table>
							</td>
							<td align="center">
								<table width="100%" border="0" cellpadding="0" cellspacing="0" background="/static/images/list_news_bg.gif">
									<tr>
										<td width="190" height="45" align="center" class="title18B"><span class="p12"> </span>${requestScope.pbCategory.categoryname }</td>
										<td align="right">&nbsp;&nbsp;</td>
										<td align="right"><span class="p12"> 您的位置：<a
											href="index.asp">首页</a>&nbsp;&gt;&nbsp;${requestScope.pbCategory.categoryname }&nbsp;
									</span></td>
									</tr>
								</table>
								<!--图片格式显示 -->
								<c:if test="${param.property==0 }">
									<c:forEach items="${requestScope.pbArticles.data }" var="pbArticle">
										<table width="100%" border="0" cellpadding="3" cellspacing="0" class="dx" style="table-layout:fixed;">
											<tr>
												<td width="30px"></td>
												<td width="1%" height="35" align="center" bgcolor="#FFFFFF">·</td>
												<td align="left" bgcolor="#FFFFFF" class="title14" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">
													<a href="article?id=${pbArticle.id }" target="_blank">
														${pbArticle.title }</a>
												</td>
												<td width="5%"></td>
												<td width="15%" align="left" bgcolor="#FFFFFF">时间：<fmt:formatDate value="${pbArticle.updatetime }" />&nbsp;</td>
												<td width="16%" align="left" bgcolor="#FFFFFF">浏览：${pbArticle.click }次</td>
											</tr>
										</table>
									</c:forEach>
								</c:if>
								<c:if test="${param.property==1 }">
									<table height="20" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td></td>
										</tr>
									</table>
									<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
										<c:forEach items="${requestScope.pbArticles.data }" var="pbArticle" varStatus="status" step="3">
											
											<tr>
												<c:if test="${pbArticles.data[status.index].picture!=null}">
												<td align="center" valign="top" whith="200">
													<table border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
														<tr>
															<td align="center" valign="middle" bgcolor="#FFFFFF">
																<a href="article?id=${pbArticles.data[status.index].id }" target="_blank"><img src="/uploads/${pbArticles.data[status.index].picture }" alt="${pbArticles.data[status.index].title }- by:${pbArticles.data[status.index].author }" width="250" height="180" border="0"></a>
															</td>
														</tr>
													</table>
													<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
														<tr>
															<td height="45" align="center" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">
																<a href="article?id=${pbArticles.data[status.index].id}" target="_blank">
																	${pbArticles.data[status.index].title }
								
																</a>
															</td>
														</tr>
													</table>
												</td>
												</c:if>
												<c:if test="${pbArticles.data[status.index+1].picture !=null}">
												<td align="center" valign="top" whith="200">
													<table border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
														<tr>
															<td align="center" valign="middle" bgcolor="#FFFFFF">
																<a href="article?id=${pbArticles.data[status.index+1].id }" target="_blank"><img src="/uploads/${pbArticles.data[status.index+1].picture }" alt="${pbArticles.data[status.index+1].title }- by:${pbArticles.data[status.index+1].author }" width="250" height="180" border="0"></a>
															</td>
														</tr>
													</table>
													<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
														<tr>
															<td height="45" align="center" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">
																<a href="article?id=${pbArticles.data[status.index+1].id }" target="_blank">
																	${pbArticles.data[status.index+1].title }
								
																</a>
															</td>
														</tr>
													</table>
												</td>
												</c:if>
												<c:if test="${pbArticles.data[status.index+2].picture !=null}">
												<td align="center" valign="top" whith="200">
													<table border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
														<tr>
															<td align="center" valign="middle" bgcolor="#FFFFFF">
																<a href="article?id=${pbArticles.data[status.index+2].id }" target="_blank"><img src="/uploads/${pbArticles.data[status.index+2].picture }" alt="${pbArticles.data[status.index+2].title }- by:${pbArticles.data[status.index+2].author }" width="250" height="180" border="0"></a>
															</td>
														</tr>
													</table>
													<table border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
														<tr>
															<td height="45" align="center" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;">
																<a href="article?id=${pbArticles.data[status.index+2].id }" target="_blank">
																	${pbArticles.data[status.index+2].title }
								
																</a>
															</td>
														</tr>
													</table>
												</td>
												</c:if>
											</tr>
										</c:forEach>
									</table>
								</c:if>
								
								<table border=0 align=center>
								<form method=get
									onsubmit="document.location = 'http://www.ningzhi.net/demo/19zt/nz0808/web2/index.asp?txt=2&Page='+ this.page.value;return false;">
									<TR>
										<TD align=right>
											<p align=center>
												<font class='nzcmspage'><a
													href="/list?category_id=${category_id}&property=${property}&draw=0">首页</a></font> <font
													class='nzcmspage'> <c:if
														test="${pbArticles.draw > 0}">
														<a
															href="/list?category_id=${category_id}&property=${property}&start=${(pbArticles.draw-1)*10}&draw=${pbArticles.draw-1}"
															target="_self">上一页</a>
													</c:if>
												</font> <font class='nzcmspage'> <c:if
														test="${pbArticles.draw < (pbArticles.total_page-1)}">
														<a
															href="/list?category_id=${category_id}&property=${property}&start=${(pbArticles.draw+1)*10}&draw=${pbArticles.draw+1}"
															target="_self">下一页</a>
													</c:if>
												</font> <font class='nzcmspage'><a
													href="/list?category_id=${category_id}&property=${property}&draw=${pbArticles.total_page-1}">尾页</a></font>
												<font class='nzcmspage'>页次：<c:if test="${pbArticles.total_page == 0}">0</c:if> <c:if test="${pbArticles.total_page != 0}">${pbArticles.draw+1}</c:if> /${pbArticles.total_page}页</font>
												<font class='nzcmspage'>共有${pbArticles.total}条</font>
									</TR>
								</form>
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