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
		<h1>버스목록</h1>
		<a href="create" class="btn">버스	등록</a>
		<table class="list">
			<thead>
				<tr>
					<th>id</th>
					<th>버스번호</th>
					<th>기점</th>
					<th>종점</th>
					<th>첫차</th>
					<th>막차</th>
					<th>유형</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="category" items="${ category }">
					<tr>
						<td>${ category.id }</td>
						<td><a href="edit?id=${ category.id }">${ category.categoryName }</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>