/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-09-06 02:25:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class setting_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<link href=\"/static/admin_css/css.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<body bgcolor=\"#FFFFFF\" leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("\"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<link href=\"/static/admin_css/css.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href=\"/static/admin_css/css.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script language=\"javascript\" src=\"/static/js/validator.js\"></script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".number {\tpadding: 3px;\r\n");
      out.write("\theight: 22px;\r\n");
      out.write("\tborder: 1px solid #CCCCCC;\r\n");
      out.write("}\r\n");
      out.write(".username {\tbackground-attachment: scroll;\r\n");
      out.write("\tbackground-image: url(/static/images/nzcms_system_16.gif);\r\n");
      out.write("\tbackground-repeat: no-repeat;\r\n");
      out.write("\tbackground-position: right;\r\n");
      out.write("\tbackground-color: #FFFFFF;\r\n");
      out.write("\tpadding: 3px;\r\n");
      out.write("\tborder: 1px solid #CCCCCC;\r\n");
      out.write("\theight: 24px;\r\n");
      out.write("}\r\n");
      out.write(".userpassword {\tbackground-attachment: scroll;\r\n");
      out.write("\tbackground-image: url(/static/images/nzcms_system_19.gif);\r\n");
      out.write("\tbackground-repeat: no-repeat;\r\n");
      out.write("\tbackground-position: right;\r\n");
      out.write("\tbackground-color: #FFFFFF;\r\n");
      out.write("\tpadding: 3px;\r\n");
      out.write("\tborder: 1px solid #CCCCCC;\r\n");
      out.write("\theight: 24px;\r\n");
      out.write("}\r\n");
      out.write(".whitetitle {\r\n");
      out.write("\tfont: 18px \"微软雅黑\";\r\n");
      out.write("\tcolor: #FFFFFF;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<!--后台调用 -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script language=\"JavaScript\">\r\n");
      out.write("function Display(ID)\r\n");
      out.write("{\r\n");
      out.write(" if( ID.style.display == 'none' )\r\n");
      out.write("{\r\n");
      out.write("ID.style.display = '' ;\r\n");
      out.write("}\r\n");
      out.write("else\t\r\n");
      out.write("{\r\n");
      out.write("ID.style.display = 'none' ;\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("function selectAll(obj)\r\n");
      out.write("{\r\n");
      out.write("for(var i = 0;i<obj.elements.length;i++)\r\n");
      out.write("if(obj.elements[i].type == \"checkbox\")\r\n");
      out.write("obj.elements[i].checked = true;\r\n");
      out.write("}\r\n");
      out.write("function selectOther(obj)\r\n");
      out.write("{\r\n");
      out.write("for(var i = 0;i<obj.elements.length;i++)\r\n");
      out.write("if(obj.elements[i].type == \"checkbox\" )\r\n");
      out.write("{\r\n");
      out.write("if(!obj.elements[i].checked)\r\n");
      out.write("obj.elements[i].checked = true;\r\n");
      out.write("else\r\n");
      out.write("obj.elements[i].checked = false;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("function changecolor(obj)\r\n");
      out.write("{\r\n");
      out.write("   e = event.srcElement\r\n");
      out.write("   if(e.checked==true)\r\n");
      out.write("   {\r\n");
      out.write("     e = e.parentElement\r\n");
      out.write("     e = e.parentElement\r\n");
      out.write("     e.style.background = \"#C1D2EE\"\r\n");
      out.write("    }\r\n");
      out.write("    else\r\n");
      out.write("    {\r\n");
      out.write("      e = e.parentElement\r\n");
      out.write("      e = e.parentElement\r\n");
      out.write("      e.style.background = \"#ffffff\"\r\n");
      out.write("     }\r\n");
      out.write("} \r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"/static/nz.ico\" />\r\n");
      out.write("<title>《&nbsp;");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.pbAdmin.adminname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("&nbsp;》，您好！欢迎您登录后台管理 - </title>\r\n");
      out.write("\r\n");
      out.write("<script language=\"JavaScript\">\r\n");
      out.write("function Display(ID)\r\n");
      out.write("{\r\n");
      out.write(" if( ID.style.display == 'none' )\r\n");
      out.write("{\r\n");
      out.write("ID.style.display = '' ;\r\n");
      out.write("}\r\n");
      out.write("else\t\r\n");
      out.write("{\r\n");
      out.write("ID.style.display = 'none' ;\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("function selectAll(obj)\r\n");
      out.write("{\r\n");
      out.write("for(var i = 0;i<obj.elements.length;i++)\r\n");
      out.write("if(obj.elements[i].type == \"checkbox\")\r\n");
      out.write("obj.elements[i].checked = true;\r\n");
      out.write("}\r\n");
      out.write("function selectOther(obj)\r\n");
      out.write("{\r\n");
      out.write("for(var i = 0;i<obj.elements.length;i++)\r\n");
      out.write("if(obj.elements[i].type == \"checkbox\" )\r\n");
      out.write("{\r\n");
      out.write("if(!obj.elements[i].checked)\r\n");
      out.write("obj.elements[i].checked = true;\r\n");
      out.write("else\r\n");
      out.write("obj.elements[i].checked = false;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("function changecolor(obj)\r\n");
      out.write("{\r\n");
      out.write("   e = event.srcElement\r\n");
      out.write("   if(e.checked==true)\r\n");
      out.write("   {\r\n");
      out.write("     e = e.parentElement\r\n");
      out.write("     e = e.parentElement\r\n");
      out.write("     e.style.background = \"#C1D2EE\"\r\n");
      out.write("    }\r\n");
      out.write("    else\r\n");
      out.write("    {\r\n");
      out.write("      e = e.parentElement\r\n");
      out.write("      e = e.parentElement\r\n");
      out.write("      e.style.background = \"#ffffff\"\r\n");
      out.write("     }\r\n");
      out.write("} \r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" background=\"/static/images/nzcms_top_02.gif\" bgcolor=\"#2A4A87\">\r\n");
      out.write("<tr>\r\n");
      out.write("    <td width=\"200\" valign=\"top\"><a href=\"manage.asp\"></a><a href=\"/admin/index\"><img src=\"/static/images/logo.jpg\" alt=\"后台标识\" border=\"0\"></a></td>\r\n");
      out.write("    <td align=\"left\" valign=\"bottom\" class=\"white\"><table height=\"30\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"56\" align=\"center\" background=\"/static/images/menu01.gif\"><a href=\"/admin/index\" class=\"left2\">首页</a></td>\r\n");
      out.write("        <td width=\"56\" align=\"center\" background=\"/static/images/menu02.gif\"><a href=\"/admin/setting\" class=\"left2\">设置</a></td>\r\n");
      out.write("        <td width=\"56\" align=\"center\"background=\"/static/images/menu01.gif\"><a href=\"/admin/manager\" class=\"left2\">用户</a></td>\r\n");
      out.write("        <td width=\"56\" align=\"center\"background=\"/static/images/menu01.gif\"><a href=\"/admin/information\" class=\"left2\">信息</a></td>\t\t\r\n");
      out.write("        <td width=\"56\" align=\"center\" background=\"/static/images/menu01.gif\"><a href=\"/index\" target=\"_blank\" class=\"left2\">前台</a></td>\r\n");
      out.write("        <td width=\"56\" align=\"center\" background=\"/static/images/menu01.gif\"><a href=\"/admin/logout\" onclick=\"return confirm('您确定退出操作吗？');\" class=\"left2\">退出</a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table width=\"100%\" height=\"5\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\" bgcolor=\"#003366\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"right\"></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- 后台调用-->\r\n");
      out.write("\r\n");
      out.write("<table width=\"100%\" height=\"85%\"  border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"200\" align=\"center\" valign=\"top\" bgcolor=\"#C9DEFA\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href=\"/static/admin_css/css.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script language=\"javascript\" src=\"/static/js/validator.js\"></script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".number {\tpadding: 3px;\r\n");
      out.write("\theight: 22px;\r\n");
      out.write("\tborder: 1px solid #CCCCCC;\r\n");
      out.write("}\r\n");
      out.write(".username {\tbackground-attachment: scroll;\r\n");
      out.write("\tbackground-image: url(/static/images/nzcms_system_16.gif);\r\n");
      out.write("\tbackground-repeat: no-repeat;\r\n");
      out.write("\tbackground-position: right;\r\n");
      out.write("\tbackground-color: #FFFFFF;\r\n");
      out.write("\tpadding: 3px;\r\n");
      out.write("\tborder: 1px solid #CCCCCC;\r\n");
      out.write("\theight: 24px;\r\n");
      out.write("}\r\n");
      out.write(".userpassword {\tbackground-attachment: scroll;\r\n");
      out.write("\tbackground-image: url(/static/images/nzcms_system_19.gif);\r\n");
      out.write("\tbackground-repeat: no-repeat;\r\n");
      out.write("\tbackground-position: right;\r\n");
      out.write("\tbackground-color: #FFFFFF;\r\n");
      out.write("\tpadding: 3px;\r\n");
      out.write("\tborder: 1px solid #CCCCCC;\r\n");
      out.write("\theight: 24px;\r\n");
      out.write("}\r\n");
      out.write(".whitetitle {\r\n");
      out.write("\tfont: 18px \"微软雅黑\";\r\n");
      out.write("\tcolor: #FFFFFF;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("\"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<link href=\"/static/admin_css/css.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      <table width=\"200\" height=\"45\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" background=\"/static/images/nzsoft_14.gif\" id=\"1\">\r\n");
      out.write("        <tr> <td width=\"55\" align=\"center\">&nbsp;</td>\r\n");
      out.write("          <td class=\"left14\">配置管理</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("      <table width=\"180\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"C9DEFA\" >\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"40\" onMouseOver='this. background=\"/static/images/left2.gif\"' onMouseOut='this. background=\"/static/images/left1.gif\"' background=\"/static/images/left1.gif\" ><a href=\"/admin/setting\" class=\"left3\">站点设置</a></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("      </td>\r\n");
      out.write("    <td align=\"center\" valign=\"top\">\r\n");
      out.write("      <table width=\"0\" height=\"6\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("\r\n");
      out.write("<iframe src=\"/admin/get_setting\" name=\"sina_roll\" width=\"98%\" marginwidth=\"0\" height=\"97%\" marginheight=\"10\" scrolling=\"Yes\" frameborder=\"Yes\" id=\"sina_roll\" border=\"10\"></iframe>\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
