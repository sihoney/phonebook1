<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>    
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>  
    
<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> list = phoneDao.selectPerson();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[phonebook1]</h1>
	
	<h2>전화번호 리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	<%
	for(int i = 0; i < list.size(); i++) {
		String name = list.get(i).getName();
		String hp = list.get(i).getHp();
		String company = list.get(i).getCompany();
		int personId = list.get(i).getPersonId();
	%>
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%= name %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%= hp %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%= company %></td>
			</tr>
			<tr>
				<td>					
					<a href="./updateForm.jsp?personId=<%= personId %>">수정</a>
				</td>
				<td>
					<a href="./delete.jsp?personId=<%= personId%>">삭제</a>
				</td>
			</tr>
		</table>
		<br/>
	<%
	}
	%>
	
	<a href="./writeForm.jsp">전화번호 등록폼</a>
</body>
</html>