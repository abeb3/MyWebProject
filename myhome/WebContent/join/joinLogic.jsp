<%@page import="com.myhome.dao.MemberDao"%>
<%@page import="com.myhome.dto.MemberDto"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//회원 등록 페이지
    	
    	request.setCharacterEncoding("UTF-8");
    	String id = request.getParameter("user_id");
    	String password = request.getParameter("user_password");
    	String email = request.getParameter("user_email1") + "@" + request.getParameter("user_email2");
    	String nickname = request.getParameter("user_nickname");
    	
    	MemberDto dto = new MemberDto();
    	dto.setId(id);
    	dto.setPassword(password);
    	dto.setEmail(email);
    	dto.setNickname(nickname);
    	MemberDao dao = new MemberDao();
    	boolean result = dao.insert(dto);
    	
    	response.sendRedirect("joinResultView.jsp?result="+result);
    	
    %>