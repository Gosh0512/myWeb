<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
</head>
<body>
<div>

<form action="pfUpdate.do" method="post">
<c:forEach var="profile" items="${profileList }">
<table>
<tr>
<th>���̵�</th>
<td>${profile.id }</td>
</tr>
<tr>
<th>�̸�</th>
<td>${profile.nickname }</td>
</tr>
<tr>
<th>�̸���</th>
<td>${profile.email }</td>
</tr>
<tr>
<th>����</th>
<td>${profile.sex }</td>
</tr>
<tr>
<th>����</th>
<td>${profile.birthDay }</td>
</tr>
<tr>
<td><input type="submit" value="ȸ����������"><input type="reset" value="�ڷΰ���"></td>
</tr>

</table>
</c:forEach>
</form>

</div>
</body>
</html>