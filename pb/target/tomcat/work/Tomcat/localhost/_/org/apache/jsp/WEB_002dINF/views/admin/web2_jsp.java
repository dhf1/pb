/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-09-06 02:25:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class web2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
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
      out.write("<script language=\"javascript\" src=\"/static/js/validator.js\"></script>\r\n");
      out.write("\r\n");
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
      out.write("<table width=\"100%\"  border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"1\" bordercolor=\"#FFFFFF\" bgcolor=\"#C4D8ED\">\r\n");
      out.write("  <form name=\"myform\" method=\"post\" action=\"/admin/update_setting\" onSubmit=\"return Validator.Validate(this,3)\">\r\n");
      out.write("    <tr bgcolor=\"#D2E8F6\">\r\n");
      out.write("      <td height=\"40\" colspan=\"2\" align=\"center\" class=\"nzcms_table_top\" >网站优化信息设置</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("     <tr onMouseOver=\"this.bgColor='#FFFF00';\" onMouseOut=\"this.bgColor='#FFFFFF';\" bgcolor=\"#ffffff\">\r\n");
      out.write("    </tr>\r\n");
      out.write("     <tr onMouseOver=\"this.bgColor='#FFFF00';\" onMouseOut=\"this.bgColor='#FFFFFF';\" bgcolor=\"#ffffff\">\r\n");
      out.write("      <td height=\"2\" colspan=\"2\" align=\"right\" bgcolor=\"#C4D8ED\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("     <tr onMouseOver=\"this.bgColor='#FFFF00';\" onMouseOut=\"this.bgColor='#FFFFFF';\" bgcolor=\"#ffffff\">\r\n");
      out.write("      <td height=\"25\" width=\"100\" align=\"right\">网站标题：</td>\r\n");
      out.write("      <td><textarea name=\"title\" cols=\"70\" rows=\"5\" id=\"title\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${setting.pbTitle}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</textarea>\r\n");
      out.write("          <br />\r\n");
      out.write("          <span class=\"shuoming\">字符请用_分隔开</span></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("     <tr onMouseOver=\"this.bgColor='#FFFF00';\" onMouseOut=\"this.bgColor='#FFFFFF';\" bgcolor=\"#ffffff\">\r\n");
      out.write("      <td height=\"25\" align=\"right\">关键字词：<br /></td>\r\n");
      out.write("      <td><textarea name=\"keywords\" cols=\"70\" rows=\"5\" id=\"keywords\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${setting.pbKeyword}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</textarea>\r\n");
      out.write("          <br />\r\n");
      out.write("          <span class=\"shuoming\">字符请用, 分隔开</span></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("     <tr onMouseOver=\"this.bgColor='#FFFF00';\" onMouseOut=\"this.bgColor='#FFFFFF';\" bgcolor=\"#ffffff\">\r\n");
      out.write("      <td height=\"25\" align=\"right\">网站描述：<br />      </td>\r\n");
      out.write("      <td><textarea name=\"describe\" cols=\"70\" rows=\"5\" id=\"description\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${setting.pbDescribe}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</textarea>\r\n");
      out.write("          <br />\r\n");
      out.write("          <span class=\"shuoming\">字符请用,分隔开</span></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("     <tr onMouseOver=\"this.bgColor='#FFFF00';\" onMouseOut=\"this.bgColor='#FFFFFF';\" bgcolor=\"#ffffff\">\r\n");
      out.write("      <td height=\"25\" align=\"right\">网页底部：</td>\r\n");
      out.write("      <td><textarea name=\"bottom\" cols=\"70\" rows=\"5\" id=\"ms\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${setting.pbBottom}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</textarea>\r\n");
      out.write("        <font class=\"red\"><br />\r\n");
      out.write("        </font><span class=\"shuoming\">支持HTML代码，&lt;br&gt;换行代码&nbsp;&nbsp;&amp;nbsp; 空格代码</span></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("\r\n");
      out.write("     <tr onMouseOver=\"this.bgColor='#FFFF00';\" onMouseOut=\"this.bgColor='#FFFFFF';\" bgcolor=\"#ffffff\">\r\n");
      out.write("      <td align=\"right\">&nbsp;</td>\r\n");
      out.write("      <td width=\"878\"><input name=\"Submit\" type=\"submit\" class=\"button\" value=\" 提交 \">\r\n");
      out.write("          &nbsp;\r\n");
      out.write("          <input name=\"Submit3\" type=\"button\" class=\"button\" onclick=\"history.go(-1);\" value=\" 返 回 \" /></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </form>\r\n");
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
