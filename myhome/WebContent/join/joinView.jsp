<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/layout/header.jsp">
	<jsp:param name="title" value="join"/>
</jsp:include>
	<script type="text/javascript" src="script.js"></script>
	<form name="joinForm" method="post" action="joinLogic.jsp">

		<table border="1" align="center">
				<caption><h3>회원 가입</h3></caption>
			<tr>
				<th>
					id
				</th>
				<td>
					<input type="text" name="user_id" placeholder="아이디를 입력하세요." required>
					<input type="button" value="중복확인" onclick="checkId()">
				</td>
			</tr>
			<tr>
				<th rowspan = "2">
					Password
				</th>
				<td>
					<input type="password" name="user_password" placeholder="비밀번호를 입력하세요." required>
				</td>
				
			</tr>
			<tr>				
				<td>
					<input type="password" name="user_repassword" placeholder="비밀번호를 입력하세요." required>
				</td>
			</tr>
			<tr>
				<th>
					Nickname
				</th>
				<td>
					<input type="text" name="user_nickname" placeholder="닉네임을 입력하세요." required>
				</td>
			</tr>
			<tr>
				<th>
					Email
				</th>
				<td>
					<input type="text" name="user_eail1" size="7">
					<select name="user_email2">
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="daum.net">daum.net</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<script type="text/javascript" src="script.js"></script>
					<input type="button" value="가입" onclick="checkPassword()">
					<input type="reset" value="초기화">
			</tr>
		</table>
	</form>

<jsp:include page="/layout/footer.jsp"/>