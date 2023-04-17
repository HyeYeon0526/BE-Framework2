<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<div class="title">학생 목록</div>
			<table>
				<tr>
					<td>id</td>
					<td><input type="text" value="${ student.id }" readonly
						disabled /></td>
				</tr>
				<tr>
					<td>studentNo</td>
					<td><input type="text" name="studentNo"
						value="${ student.studentNo }" /></td>
				</tr>				
				<tr>
					<td>name</td>
					<td><input type="text" name="name"
						value="${ student.name }" /></td>
				</tr>				
				<tr>
					<td>departmentNo</td>
					<td><input type="text" name="departmentNo"
						value="${ student.departmentNo }" /></td>
				</tr>				
				<tr>
					<td>phone</td>
					<td><input type="text" name="phone"
						value="${ student.phone }" /></td>
				</tr>				
				<tr>
					<td>sex</td>
					<td><input type="text" name="sex"
						value="${ student.sex }" /></td>
				</tr>
				<tr>
					<td>email</td>
					<td><input type="text" name="email"
						value="${ student.email }" /></td>
				</tr>
			</table>
			<button type="submit" class="btn">저장</button>
		</form>
	</div>
</body>
</html>