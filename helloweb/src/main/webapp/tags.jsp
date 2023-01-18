<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>
	
	<table border="1" cellspacing="0" cellpadding="10">
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
		</tr>
		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>둘리</td>
		</tr>
		<tr>
			<td>2</td>
			<td>안녕</td>
			<td>마이콜</td>
		</tr>
	</table>
	<br>               
	
	<img src='http://127.0.0.1:8080/helloweb/assets/images/loopy.png' style="width:120px; border:1px solid #999">
	<img src='/helloweb/loopy.png' style="width:120px; border:1px solid #999">
	<img src='assets/images/loopy.png' style="width:120px; border:1px solid #999">

	<p>
		문장 입니다.~~~~<br>
		문장 입니다.~~~~<br>
		문장 입니다.~~~~<br>
		문장 입니다.~~~~
	</p>		
	<a href="/helloweb/hello">hello로 가기</a>
	
	<br>
	<a href="/helloweb/form.jsp">form으로 가기</a>
</body>
</html>