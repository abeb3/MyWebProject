<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>    
<jsp:include page="/layout/header.jsp">
	<jsp:param name="title" value="Welcome"/>
</jsp:include>

	<H2>Welcome!</H2>
	<h3>나의 홈페이지!</h3>
	<h5>이곳은 메인페이지 입니다.</h5>
	<p><img src="./layout/image/1.png" width="200" height="200"></p>

<jsp:include page="/layout/footer.jsp"/>