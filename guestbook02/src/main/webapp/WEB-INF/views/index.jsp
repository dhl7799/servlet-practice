<%@page import="com.douzone.guestbook.dao.guestbookDao"%>
<%@page import="com.douzone.guestbook.vo.guestbookVo"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalDate"%>

<%@page import="java.util.List"%>

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
	<form action="<%=request.getContextPath()%>/gb" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" name = "a" VALUE="확인"></td>
		</tr>
	</table>
	</form>
	<br>
	<table width=510 border=1>
		<% for(guestbookVo gbv : list){%>
		<tr>
			<td>[<%=gbv.getNo() %>]</td>
			<td><%=gbv.getName() %></td>
			<td><%=gbv.getDatetime() %></td>
			<td><a href="<%=request.getContextPath()%>/gb?a=삭제&no=<%=gbv.getNo()%>">삭제</a></td>
			
		</tr>
		<tr>
			<td colspan=4><%=gbv.getMessage() %></td>
		</tr>
		<%}; %>
	</table>
</body>
</html>