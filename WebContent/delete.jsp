<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>
    
<%
	int personId = Integer.parseInt(request.getParameter("personId"));

	PhoneDao phoneDao = new PhoneDao();
	
	phoneDao.deletePerson(personId);
	
	response.sendRedirect("./list.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	삭제페이지 입니다.
</body>
</html>