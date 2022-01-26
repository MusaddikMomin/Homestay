<%@page import="com.DAO.FeedbackDAO"%>
<%@page import="com.model.Feedback"%>

<%
	String userId = request.getParameter("userId");
String questions = request.getParameter("Questions");
String answers = request.getParameter("Answers");

Feedback feedback = new Feedback(userId, questions, answers);

int status = FeedbackDAO.updateFeedback(feedback);

if (status == 1) {
	response.sendRedirect("Feedback.jsp");
}
%>