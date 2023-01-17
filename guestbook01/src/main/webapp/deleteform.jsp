<%@page import="guestbook01.guestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	Long no = Long.parseLong(request.getParameter("no"));
%>
<title>방명록</title>
</head>
<body>
	<form method="post" action="">
	<input type='hidden' name="no" value="<%=no %>">
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="삭제"></td>
		</tr>
	</table>
	<%
	request.setCharacterEncoding("utf-8");
	String password = request.getParameter("password");
	new guestbookDao().delete(no, password);
	%>	
	<a href="/guestbook01/index.jsp">메인으로 돌아가기</a></td>
	</form>
</body>
</html>