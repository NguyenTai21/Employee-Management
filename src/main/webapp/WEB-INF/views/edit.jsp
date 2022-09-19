<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import = "com.hcl.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form:form action="save" method="post" modelAttribute="employee">
		<table border="0" cellpadding="5" align="center" >
			<tr>
				<td>Eno :</td>
				<td>${employee.eno}
				<form:hidden path="eno"/>
				</td>
			</tr>

			<tr>
				<td>Name :</td>
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
				<td>Department :</td>
				<td><form:input path="dept" /></td>
			</tr>

			<tr align="center">
				<td colspan="2"><input type="submit" value="Save"></td>
			</tr>

		</table>
	</form:form>
</body>
</html>