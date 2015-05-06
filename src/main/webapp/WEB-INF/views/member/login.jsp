<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 페이지</title>
</head>
<body>
	<div>
	<form action="loginOK.do" method="post">
	<table>
	<tr>
	<th>ID</th>
	<td><input type="text" name="id"></td>
	</tr>
	<tr>
	<th>PASS</th>
	<td><input type="password" name="pass"></td>
	</tr>
	<tr>
	<td><input type="submit" value="로그인"></td>
	<td><a href="index.do"><div>가입하기</div></a><button>뒤로가기</button></td>

	</tr>
	</table>
	</form>
	</div>
</body>
</html>