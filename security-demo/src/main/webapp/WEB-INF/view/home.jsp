<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Hello dear ;)</h2> <br>	
	<security:authorize access="hasRole('Admin')">
		<p> 
			<a href="${pageContext.request.contextPath}/admin">Admin Page</a> ( Only for admins )		
		</p>
	</security:authorize>
	
	<security:authorize access="hasRole('Manager')">
		<p> 
			<a href="${pageContext.request.contextPath}/manager">Manager Page</a> ( Only for managers )		
		</p>
	</security:authorize>
	
	
	<form:form method="POST" action="${pageContext.request.contextPath}/logout" >
	
		<input type="submit" value="Logout" >
	
	</form:form>  <br>
	
	
</body>
</html>