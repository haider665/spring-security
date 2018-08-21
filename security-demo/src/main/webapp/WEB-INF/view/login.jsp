<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.ahr {font-family: Arial, Helvertica, sans-serif;
      text-align:center;
	  padding:155px;
margin-left:260px;	  
	 }
* {box-sizing: border-box;}

.input-container {
    display: -ms-flexbox;
    display: flex;
    width: 65%;
    margin-bottom: 8px;
	margin-left:85px;
}

.icon {
    padding: 10px;
	border-radius: 2px;
    background: dodgerblue;
    color: white;
    min-width: 50px;
    text-align: center;
}

.input-field {
    border-radius: 0px;
    width: 65%;
    padding: 10px;
    outline: none;
}

.input-field:focus {
    border: 2px solid dodgerblue;
}

.btn {
    border-radius: 5px;
    background-color: dodgerblue;
    color: white;
    padding: 10px;
    border: none;
    cursor: pointer;
    width: 15%;
    opacity: 0.9;
}

.btn:hover {
    opacity: 1;
}

div{
   border-radius: 5px;
   background-color: #f2f2f2;
   padding: 10px 15px;
   }
#cat{
   border-radius: 5px;
   color:#787878;
   
}
</style>
</head>
<body class="ahr" style="width:57%;">

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
<div>
<c:if test="${param.error!=null}">
	<p style="color:red">Sorry, you have entered wrong user name or password </p>
</c:if>

<c:if test="${param.logout!=null}">
	<p style="color:green"> You just log out </p>
</c:if>

<h2 id="cat">Sign In</h2>

 <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" name="username" type="text" placeholder="username or email">
 </div>
 
 <div class="input-container" >
    <i class="fa fa-lock icon"></i>
    <input class="input-field" type="password" name="password" placeholder="password">
 </div>

 <button type="submit" class="btn">Login</button>
</div>
</form:form>

</body>
</html>
