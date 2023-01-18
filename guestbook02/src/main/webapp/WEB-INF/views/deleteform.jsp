
<%@page import="com.douzone.guestbook.dao.guestbookDao"%>
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
			<td><input type="submit" name = "a" value="삭제"></td>
		</tr>
	</table>
	<%
	request.setCharacterEncoding("utf-8");
	String password = request.getParameter("password");
	boolean suc = new guestbookDao().delete(no, password);
	String mes = "삭제 대기중";
	if(suc){
		mes = "성공적으로 삭제되었습니다.";
	}
	%>
	<h1><%=mes %></h1>	
	<a href="<%=request.getContextPath()%>/gb">메인으로 돌아가기</a></td>
	</form>
</body>
</html>