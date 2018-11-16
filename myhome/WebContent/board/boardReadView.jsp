<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="dto" value="${requestScope.brdDto }"/>
<c:remove var = "brdDto" scope = "request"/>

<jsp:include page ="/layout/header.jsp">
	<jsp:param value="${dto.title }" name="title"/>
</jsp:include>
	<table border="1" width="70%">
		<caption><h2>본문 보기</h2></caption>
		<tr>
			<th width="15%">제목</th>
			<td width="55%">
				${dto.title }
			</td>
			<th width="15%">조회수</th>
			<td>${dto.hit }</td>
		</tr>
		<tr>
			<td colspan="4" height="200" valign="top">
				${dto.content }
			</td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록으로" onclick="location.href='BoardList.do?page=1'">
				<c:if test="${sessionScope.currentId == dto.writer }">
					<input type = "button" value = "수정" onclick = "location.href='BoardModify.do?brdNo=${dto.num}'">
					<input type="button" value="삭제" onclick="location.href='BoardDelete.do?brdNo=${dto.num}'">
				</c:if>
			</td>
	</table>

<jsp:include page="/layout/footer.jsp"/>