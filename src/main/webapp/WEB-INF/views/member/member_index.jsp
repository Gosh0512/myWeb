<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div{
float:left
}
.right{

}
table{
text-align:left;
}
</style>
</head>
<body>
<div class="header"></div>
<div class="left">회원가입</div>
<div class="right">
<form action="insertOK.do" method="post">
<table>
<tr>
<th>이메일</th>
<td><input type="text" name="email"><td>
</tr>
<tr>
<th>아이디</th>
<td><input type="text" name="id"><td>
</tr>
<tr>
<th>별명</th>
<td><input type="text" name="nickname"><td>
</tr>
<tr>
<th>비밀번호</th>
<td><input type="password" name="pass"><td>
</tr>
<tr>
<th>비밀번호 확인</th>
<td><input type="password" name="pass_cf"><td>
</tr>
<tr>
<th>성별</th>
<td>
남자<input type="radio" name="sex" value="man" />
여자<input type="radio" name="sex" value="woman" />
</td>
</tr>
<tr>
<tr>
<th>생년월일</th><td><select name="year">
<%for(int i=2014; i>1949; i--){ %>
<option value="<%=i%>"><%=i %>년</option>
<%} %>
</select>
<select name="month">
<%for(int i=1; i<13; i++){ %>
<option value="<%=i%>"><%=i %>월</option>
<%} %>
</select>
<select name="day">
<%for(int i=1; i<31; i++){ %>
<option value="<%=i%>"><%=i %>일</option>
<%} %>
</select>
<tr>
<th>우편번호</th>
<td><input type="text" name="zipcode1">-<input type="text" name="zipcode2"><td>
</tr>
<tr>
<td>
<input type="submit" value="가입" onclick="">
<input type="reset" value="취소">
</td>
</tr>
</table>
</form>
</div>
<div class="bottom"></div>
</body>
</html>