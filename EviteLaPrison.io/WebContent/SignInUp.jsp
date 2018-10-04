<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="SignInUpServlet" method="post">
		<p>
			<label for="firstName">Prenom:</label><input type="text"
				name="firstName">
		</p>
		<p>
			<label for="firstName">Nom:</label><input type="text" name="lastName">
		</p>
		<p>
			<label for="firstName">Date de Naissance:</label><input type="text"
				name="dob">
		</p>
		<p>
			<label for="firstName">Mail:</label><input type="text" name="email">
		</p>
		<p>
			<label for="firstName">Mot de Passe:</label><input type="text"
				name="pwd">
		</p>
		<p>
			<button type="submit">Valider</button>
		</p>
	</form>

</body>
</html>