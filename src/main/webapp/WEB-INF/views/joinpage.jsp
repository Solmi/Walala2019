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
<!-- jQuery (��Ʈ��Ʈ���� �ڹٽ�ũ��Ʈ �÷������� ���� �ʿ��մϴ�) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- ��� �����ϵ� �÷������� �����մϴ� (�Ʒ�), ������ �ʴ´ٸ� �ʿ��� ������ ������ �����ϼ��� -->
<script src="js/bootstrap.min.js"></script>
<title>�α���������</title>
</head>
<body>
	<center>
		<h2>�α���</h2>
		<hr>
		<form action="login.do">
			<div class="form-group">
				<label for="exampleInputEmail1">�̸��� �ּ�</label> 
				<input type="email"	class="form-control" id="exampleInputEmail1" name = "email" placeholder="�̸����� �Է��ϼ���">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">��ȣ</label>
				<input type="password" class="form-control" id="exampleInputPassword1" name = "password" placeholder="��ȣ">
			</div>
			<button type="submit" class="btn btn-default">����</button>
		</form>
		</br></br></br></br></br>
		
		
		
		<form action="login.do">
			<table border="1" cellpadding="0" cellspacing="0" width=700px>
				<tr>
					<td width=20%>�̸���</td>
					<td>&nbsp;&nbsp;<input type="text" name="email" size="20" /></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td>&nbsp;&nbsp;<input type="password" name="password"
						size="20" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						class="btn" value="�α���" /></td>
				</tr>
			</table>
			<%if(session.getAttribute("error")!=null){%>
			<%=session.getAttribute("error") %>
			<% }%></br> <a href="joinform.do" class="btn_a rounded">ȸ������</a> 
			<a href="findpasswordform.do" class="btn_a rounded">��й�ȣã��</a>
		</form>
		<hr>
	</center>
</body>
</html>