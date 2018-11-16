<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String titleParam = request.getParameter("title");
	String title = "My homepage";
	if(titleParam != null){
		title = "My homepage :" + titleParam;
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${param.title != null ? param.title : "My Webpage!"}</title>
		<link rel="stylesheet" type="text/css" href="/myhome/layout/layout.css">
	</head>
	<body>
		<div align = "center">
			<div class = "header" align = "center">
			<c:choose>
			<c:when test = "${sessionScope.currentNickname == null }">
			<a href="/myhome/login/loginView.jsp">LOGIN</a> |
			<a href="/myhome/join/joinView.jsp">JOIN</a> |
			</c:when>
			<c:otherwise>
			${sessionScope.currentNickname }님 | 
			<a href="/myhome/logout/logoutLogic.jsp">LOGOUT</a> | 
			<a href="/myhome/mypage/mypageView.jsp">MY PAGE</a> |
			</c:otherwise>
			</c:choose>
			<a href="/myhome/board/BoardList.do?page=1">BOARD</a> |
			DOWNLOADS |
			<a href = "https://blog.naver.com/abeb3">BLOG</a> |
			<a href = "https://github.com/abeb3">GITHUB</a>
			</div>
			<div class="main" align="center">