<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/layout/header.jsp">
	<jsp:param value="mypage" name="title"/>
</jsp:include>
<c:set var="message">
	<c:choose>
		<c:when test="${result }">
			회원 수정에 성공했습니다.
		</c:when>
		<c:otherwise>
			회원 수정에 실패했습니다.
		</c:otherwise>
	</c:choose>
</c:set>

<h2>
	${message }<br>
</h2>

<input type="button" value="메인으로" onclick="location.href='/myhome'">


<jsp:include page="/layout/footer.jsp"/>