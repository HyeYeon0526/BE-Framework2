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
		<h1>목록</h1>
		<a href="create" class="btn">사람 등록</a>
		<table class="list">
			<thead>
				<tr>
					<th>피드</th>
					<th>이름</th>
					<th>카테고리순번</th>
					<th>전화번호</th>
					<th>성별</th>
					<th>이메일</th>
					<th>제목</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="person" items="${ person }">
					<tr>
						<td>${ person.id }</td>
						<td><a href="edit?id=${ person.pid }">${ category.categoryCode }</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>