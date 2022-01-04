<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>[phonebook1]</h1>
	
	<h2>전화번호 리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	<%
	for(int i = 0; i < list.size(); i++) {
	%>
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%= list.get(i).getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%= list.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%= list.get(i).getCompany() %></td>
			</tr>
		</table>
		<br/>
	<%
	}
	%>
	
	<a href="http://localhost:8088/phonebook1/writeForm.jsp">전화번호 등록폼</a>
</body>
</html>