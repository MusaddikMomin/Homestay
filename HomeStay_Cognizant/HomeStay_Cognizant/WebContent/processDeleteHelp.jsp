<%@page import="com.DAO.helpDAO"%>
<%@page import="com.model.help"%>

<%
	int RequestId = Integer.parseInt(request.getParameter("RequestId"));

int status = helpDAO.deleteHelp(RequestId);
if (status > 0) {
	response.sendRedirect("Help.jsp");
} else {
	response.sendRedirect("error.jsp");
}
%>