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
	
	<h2>��ȭ��ȣ ����Ʈ</h2>
	
	<p>�Է��� ���� �����Դϴ�.</p>
	
	<%
	for(int i = 0; i < list.size(); i++) {
	%>
		<table border="1">
			<tr>
				<td>�̸�(name)</td>
				<td><%= list.get(i).getName() %></td>
			</tr>
			<tr>
				<td>�ڵ���(hp)</td>
				<td><%= list.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>ȸ��(company)</td>
				<td><%= list.get(i).getCompany() %></td>
			</tr>
		</table>
		<br/>
	<%
	}
	%>
	
	<a href="http://localhost:8088/phonebook1/writeForm.jsp">��ȭ��ȣ �����</a>
</body>
</html>