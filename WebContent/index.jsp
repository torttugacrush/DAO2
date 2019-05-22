<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ServletEmpleado?tipo=sesion" name="frmsesion" method="post">
<table border="1" align="center">
<tr> 
<td>Login</td>
<td><input type="text" name="txt_login"></td>
</tr>

<tr> 
<td>pASSWORD</td>
<td><input type="text" name="txt_pass"></td>
</tr>
<tr>
<td colspan="2" align="center">${requestScope.msg}</td>
</tr>
<tr>
<td colspan="2" align="right"><input type="submit" value="Iniciar"></td>
</tr>
</table>
</form>

</body>
</html>