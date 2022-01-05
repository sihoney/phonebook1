<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %> 
  
<%
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	/*
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	PersonVo personVo = new PersonVo(name, hp, company);
	System.out.println(personVo.toString());
	PhoneDao phoneDao = new PhoneDao();
	
	phoneDao.insertPerson(personVo);
	
	response.sendRedirect("./list.jsp");
%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>