<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Books</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<%@ include file="header.html"%>
	<h2>List of Books</h2>
	<sql:query var="books"
		dataSource="${applicationScope.oracleDataSource }">
select * from books
order by id
</sql:query>
	<table>
		<tr>
			<th>Title</th>
			<th>Author</th>
			<th>Price</th>
		</tr>
	</table>
	<c:forEach var="book" items="${books.rows}">
		<tr>
			<td>${books.title}</td>
			<td>${books.author}</td>
			<td>${books.price}</td>
	</c:forEach>
</body>
</html>