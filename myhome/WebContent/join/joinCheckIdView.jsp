<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아이디 중복 확인</title>
	<script type = "text/javascript" scr="script.js"></script>
</head>
<%
	String id = request.getParameter("id");
	boolean result = Boolean.parseBoolean(request.getParameter("result"));
%>
<body>
	<form method="post" action="joinCheckIdLogic.jsp">
	<%if(result) { %>
		&quot; <%=id %> &quot;(은)는 사용 중 입니다. <br><br>
		ID <input type="text" name="id">
		<input type="submit" value="중복체크">
	<%} else { %>
		사용 가능한 아이디입니다.<br><br>
		<input type="button" value="사용" onclick="checkIdFormClos('<%=id %>')">
	<%} %>
	
	</form>
</body>
</html>