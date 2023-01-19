<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>값 출력</h4>
	${iVal } <br>
	${lVal } <br>
	${fVal } <br>
	${bVal } <br>
	${sVal } <br>
	
	<h4>객체 출력</h4>
	--${obj }-- <br>
	${userVo.no } <br>
	${userVo.name } <br>

	<h4>Map 출력</h4>
	${m.iVal } <br>
	${m.fVal } <br>
	${m.sVal } <br>
	
	<h4>산술연산</h4>
	${3*4+6/2 } <br>
	${iVal + 10 } <br>
	
	<h4>관계연산</h4>
	${iVal == 10 } <br>
	${iVal < 5 } <br>
	${obj == null } <br>
	${empty obj } <br>
	${obj != null } <br>
	${not empty obj } <br>

	<h4>논리연산</h4>
	${iVal == 10 && lVal < 1000 } <br>
	${iVal == 10 || lVal < 1000 } <br>
	
	<h4>요청 파라미터</h4>
	--${param.a + 10 }-- <br>
	--${param.email }-- <br>
	
	<h4>Context Path</h4>
	${pageContext.request.contextPath }
</body>
</html>