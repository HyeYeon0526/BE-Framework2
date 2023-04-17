<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/common.css" />
<style>
form {
	width: 600px;
	margin: auto;
	box-shadow: 0 0 4px lightgray, 2px 2px 4px gray;
	overflow: auto;
}

div.title {
	font-size: 20pt;
	padding: 10px;
	background-color: #eee;
}

table {
	margin: 20px;
}

td {
	min-width: 100;
	padding: 5px;
}

td:nth-child(1) {
	text-align: right;
}

button {
	margin: 5px 0 20px 20px;
}

div.message {
	border-radius: 10px;
	padding: 12px;
	margin: 10px;
	background-color: #ffa;
	border: 1px solid #cc0;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<div class="title">버스 수정</div>
			<table>
				<tr>
					<td>id</td>
					<td><input type="text" value="${ bus.id }" readonly disabled /></td>
				</tr>
				<tr>
					<td>버스 번호</td>
					<td><input type="text" name="studentNo" value="${ bus.busNo }" /></td>
				</tr>
				<tr>
					<td>기점</td>
					<td><input type="text" name="name" value="${ bus.firstStop }" /></td>
				</tr>
				<tr>
					<td>종점</td>
					<td><input type="text" name="name" value="${ bus.lastStop }" /></td>
				</tr>
				<tr>
					<td>학과</td>
					<td><select name="departmentId">
							<option value="1" ${ bus.categoryId == 1 ? "selected" : "" }>간선</option>
							<option value="2" ${ bus.categoryId == 2 ? "selected" : "" }>지선</option>
					</select></td>
				</tr>
				<tr>
					<td>첫차</td>
					<td><input type="text" name="phone" value="${ bus.firstStop }" /></td>
				</tr>
				<tr>
					<td>막차</td>
					<td><input type="text" name="sex" value="${ bus.lastStop }" /></td>
				</tr>
			</table>
			<button type="submit" class="btn">저장</button>
			<c:if test="${ category.id > 0 }">
				<a href="delete?id=${ category.id }" class="btn">삭제</a>
			</c:if>
			<button type="submit" class="btn">목록으로</button>
			<c:if test="${ not empty message }">
				<div class="message">${ message }</div>
			</c:if>
		</form>
	</div>
</body>
</html>