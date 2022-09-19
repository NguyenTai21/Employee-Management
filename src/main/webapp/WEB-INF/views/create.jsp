<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body align="center">

	<form:form action="save" method="post" modelAttribute="employee">
		<table border="0" cellpadding="5" align="center">
			<tr>
				<td>Ename :</td>
				<td><form:input path="ename" /></td>
			</tr>

			<tr>
				<td>Email :</td>
				<td><form:input path="email" /></td>
			</tr>
			
			<tr>
				<td>Phone :</td>
				<td><form:input path="phone" /></td>
			</tr>

			<tr>
				<td>Address :</td>
				<td><form:input path="address" /></td>
			</tr>

			<tr>
				<td>Dept :</td>
				<td><form:input path="dept" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Create"></td>
			</tr>

		</table>
	</form:form>
</body>
</html>