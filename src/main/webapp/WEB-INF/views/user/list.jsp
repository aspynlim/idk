<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
</head>
<body>
<div class="container">
	<h1>User List</h1>
	<table class="table">
		<thead>
			<tr>
				<!--  <th>삭제</th> -->
				<th>번호</th>
				<th>이름</th>
				<th>아이디</th>
				<th>생성일</th>
				<!-- <th>수정</th> -->
			</tr>
		</thead>
		<c:forEach items="${users}" var="user">
			<tr>
				<!-- <td><input type="checkbox" name="remove" value="${user.uiNum}"></td> -->
				<td>${user.uiName}</td>
				<td>${user.uiNum}</td>
				<td>${user.uiId}</td>
				<td>${user.credat}</td>
				<!-- <td><a href="/views/user/view?uiNum=${user.uiNum}"><button>${user.uiNum}</button></a></td> -->
			</tr>
		</c:forEach>
	</table>
	<!--  
	<button onclick="goPage('/user/insert')">Insert</button>
	<button onclick="deleteUsers()">Delete</button> -->
</div>
<script>
/*
function goPage(url){
	location.href = "/views" + url;
}

function deleteUsers(){
	var checks = document.querySelectorAll('input[name="delete"].checked');
}
*/
</script>
</body>
</html>