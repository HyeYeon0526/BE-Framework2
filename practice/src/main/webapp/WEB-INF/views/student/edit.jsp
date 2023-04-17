<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/common.css" />
<style>
a.btn {
	float: right;
	margin: -20px 0 5px 0;
}

td:nth-child(1) {
	text-align: center;
}

	
</style>
</head>
<body>
	<div class="container">
		<h1>학생 목록</h1>
		<a href="create" class="btn">학생 등록</a>
		<table class="list">
			<thead>
				<tr>
					<th>id</th>
					<th>학생 번호</th>
					<th>학생 이름</th>
					<th>학과 번호</th>
					<th>전화번호</th>
					<th>성별</th>
					<th>이메일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${ student }">
					<tr>
						<td>${ student.id }</td>
						<td><a href="edit?id=${ student.id }">${ student.name }</a></td>
						<td>${ studnet.studentNo }</td>
						<td>${ studnet.name }</td>
						<td>${ studnet.departmentNo }</td>
						<td>${ studnet.phone }</td>
						<td>${ studnet.sex }</td>
						<td>${ studnet.email }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>