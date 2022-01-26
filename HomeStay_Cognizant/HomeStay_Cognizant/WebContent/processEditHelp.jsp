<%@page import="com.DAO.helpDAO"%>
<%@page import="com.model.help"%>

<%
	int requestId = Integer.parseInt(request.getParameter("RequestId"));
String comments = request.getParameter("comments");

help help = new help(requestId, comments);

int status = helpDAO.updateHelp(help);

if (status > 0) {
	response.sendRedirect("ViewHelpRequest.jsp");
}
%>