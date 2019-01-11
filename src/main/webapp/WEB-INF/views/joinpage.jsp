<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/styles.css" type="text/css"
	charset="utf-8" />
<link href="/Walala2019/src/main/webapp/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
<title>로그인페이지</title>
</head>
<body>
	<center>
		<h2>로그인</h2>
		<hr>
		<form action="login.do">
			<div class="form-group">
				<label for="exampleInputEmail1">이메일 주소</label> 
				<input type="email"	class="form-control" id="exampleInputEmail1" name = "email" placeholder="이메일을 입력하세요">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">암호</label>
				<input type="password" class="form-control" id="exampleInputPassword1" name = "password" placeholder="암호">
			</div>
			<button type="submit" class="btn btn-default">제출</button>
		</form>
		</br></br></br></br></br>
		
		
		
		<form action="login.do">
			<table border="1" cellpadding="0" cellspacing="0" width=700px>
				<tr>
					<td width=20%>이메일</td>
					<td>&nbsp;&nbsp;<input type="text" name="email" size="20" /></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>&nbsp;&nbsp;<input type="password" name="password"
						size="20" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						class="btn" value="로그인" /></td>
				</tr>
			</table>
			<%if(session.getAttribute("error")!=null){%>
			<%=session.getAttribute("error") %>
			<% }%></br> <a href="joinform.do" class="btn_a rounded">회원가입</a> 
			<a href="findpasswordform.do" class="btn_a rounded">비밀번호찾기</a>
		</form>
		<hr>
	</center>
</body>
</html>