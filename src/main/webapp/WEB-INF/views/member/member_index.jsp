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
<div class="left">ȸ������</div>
<div class="right">
<form action="insertOK.do" method="post">
<table>
<tr>
<th>�̸���</th>
<td><input type="text" name="email"><td>
</tr>
<tr>
<th>���̵�</th>
<td><input type="text" name="id"><td>
</tr>
<tr>
<th>����</th>
<td><input type="text" name="nickname"><td>
</tr>
<tr>
<th>��й�ȣ</th>
<td><input type="password" name="pass"><td>
</tr>
<tr>
<th>��й�ȣ Ȯ��</th>
<td><input type="password" name="pass_cf"><td>
</tr>
<tr>
<th>����</th>
<td>
����<input type="radio" name="sex" value="man" />
����<input type="radio" name="sex" value="woman" />
</td>
</tr>
<tr>
<tr>
<th>�������</th><td><select name="year">
<%for(int i=2014; i>1949; i--){ %>
<option value="<%=i%>"><%=i %>��</option>
<%} %>
</select>
<select name="month">
<%for(int i=1; i<13; i++){ %>
<option value="<%=i%>"><%=i %>��</option>
<%} %>
</select>
<select name="day">
<%for(int i=1; i<31; i++){ %>
<option value="<%=i%>"><%=i %>��</option>
<%} %>
</select>
<tr>
<th>�����ȣ</th>
<td><input type="text" name="zipcode1">-<input type="text" name="zipcode2"><td>
</tr>
<tr>
<td>
<input type="submit" value="����" onclick="">
<input type="reset" value="���">
</td>
</tr>
</table>
</form>
</div>
<div class="bottom"></div>
</body>
</html>