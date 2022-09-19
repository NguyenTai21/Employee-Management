<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="search" method="get">
		<fieldset>
			<legend>Search:</legend>
			<input type="text" id="search" name="search"> 
			<button onclick=search()>Search</button>
		</fieldset>
	</form>
</body>