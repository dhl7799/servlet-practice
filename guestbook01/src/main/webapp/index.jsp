<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="guestbook01.guestbookVo"%>
<%@page import="java.util.List"%>
<%@page import="guestbook01.guestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	List<guestbookVo> list = new guestbookDao().showAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	<%
	request.setCharacterEncoding("utf-8");
	String Name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	guestbookVo vo = new guestbookVo();
	vo.setName(Name);
	vo.setPassword(password);
	vo.setMessage(message);
	new guestbookDao().insert(vo);
	%>	
	<br>
	<table width=510 border=1>
		<% for(guestbookVo gbv : list){%>
		<tr>
			<td>[<%=gbv.getNo() %>]</td>
			<td><%=gbv.getName() %></td>
			<td><%=gbv.getDatetime() %></td>
			<td><a href="/guestbook01/deleteform.jsp?no=<%=gbv.getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=gbv.getMessage() %></td>
		</tr>
		<%}; %>
	</table>
</body>
</html>