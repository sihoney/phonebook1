<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeForm - phonebook1</title>
</head>
<body>
	<h1>[Phonebook1]</h1>
	
	<h2>전화번호 등록폼</h2>
	
	<p>
		전화번호를 등록드리면 아래 항복을 기입하고 '등록'버튼을 클릭하세요.
	</p>
	
	<form action="./insert.jsp" method="get">
		이름(name): <input type="text" name="name" value=""><br/>
		핸드폰(hp): <input type="text" name="hp" value=""><br/>
		회사(company): <input type="text" name="company" value=""><br/>
		<button type="submit">전송</button>
	</form>
</body>
</html>