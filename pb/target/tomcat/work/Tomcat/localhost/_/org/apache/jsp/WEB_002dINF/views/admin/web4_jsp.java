/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-09-06 02:25:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class web4_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link href=\"/static/admin_css/css.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("<!--后台调用 -->\r\n");
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
      out.write("</script><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
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
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("\r\n");
      out.write("<table width=\"100%\" height=\"100%\" border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"1\" bordercolor=\"#FFFFFF\" bgcolor=\"#C4D8ED\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"40\" colspan=\"2\" align=\"center\" class=\"nzcms_table_top\" >操作系统检测情况</td>\r\n");
      out.write("    <td height=\"40\" align=\"center\" class=\"nzcms_table_top\" >万年日历</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"left\" bgcolor=\"#E4EDF9\"><b>服务器检测</b></td>\r\n");
      out.write("    <td height=\"30\" align=\"left\" bgcolor=\"#E4EDF9\">&nbsp;</td>\r\n");
      out.write("    <td rowspan=\"15\" align=\"left\" bgcolor=\"#E4EDF9\"><iframe src=\"/static/html/rili.html\" name=\"sina_roll\" width=\"100%\" marginwidth=\"0\" height=\"100%\" marginheight=\"10\" scrolling=\"no\" frameborder=\"no\" id=\"sina_roll\" border=\"10\"></iframe>      </a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"20%\" height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">客户端地址</a></td>\r\n");
      out.write("    <td width=\"30%\" height=\"30\" bgcolor=\"#FFFFFF\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pbSystemInfo.remoteAddr}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">客户端名</td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pbSystemInfo.remoteHost}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">服务器时间</td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pbSystemInfo.server_time}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">服务器端口</td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pbSystemInfo.serverPort}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">服务器名</a></td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pbSystemInfo.serverName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\"></a></td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"left\" bgcolor=\"#E4EDF9\"><b>主要组件检测</b></td>\r\n");
      out.write("    <td height=\"30\" align=\"left\" bgcolor=\"#E4EDF9\">&nbsp;</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">服务器环境</a></td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\">JavaWeb</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">上传图片</td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\"><font color=green><b>√</b></font></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">数据库</td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\">mysql</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">状态</a></td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\">稳定</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">文件读写</td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\">\r\n");
      out.write("      <b>√</b></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\" align=\"right\" bgcolor=\"#E4EDF9\">无组件上传支持</td>\r\n");
      out.write("    <td height=\"30\" bgcolor=\"#FFFFFF\"><font color=green><b>√</b></font>\r\n");
      out.write("        </span></td>\r\n");
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
