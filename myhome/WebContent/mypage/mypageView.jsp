<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/layout/header.jsp">
	<jsp:param name="title" value="my page"/>
</jsp:include>

<form action = "mypageLogic.jsp" method="post">
	<h2>내 정보 보기</h2>
	
	PW
	<input type="password" name="user_password"
	 placeholder="${currentNickname }님의 비밀번호" required>
	<br>
	<input type="submit" value="내 정보 보기">
		
</form>


<jsp:include page="/layout/footer.jsp"/>