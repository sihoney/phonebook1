<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %> 

<%
	int personId = Integer.parseInt(request.getParameter("personId"));
	
	PhoneDao phoneDao = new PhoneDao();
	
	PersonVo pvo = phoneDao.getPerson(personId);
	
	String name = pvo.getName();
	String hp = pvo.getHp();
	String company = pvo.getCompany();
			
%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update - phonebook1</title>
</head>
<body>
	<h1>[Phonebook1]</h1>
	
	<h2>전화번호 수정폼</h2>
	
	<p>
		전화번호를 수정하려면 아래 항복을 기입하고 '수정'버튼을 클릭하세요.
	</p>
	
	<form action="./update.jsp" method="get">
		이름(name): <input type="text" name="name" value="<%= name%>"><br/>
		핸드폰(hp): <input type="text" name="hp" value="<%= hp %>"><br/>
		회사(company): <input type="text" name="company" value="<%= company%>"><br/>
		<input type="hidden" name="personId" value="<%= personId%>">
		<button type="submit">수정</button>
	</form>
</body>
</html>