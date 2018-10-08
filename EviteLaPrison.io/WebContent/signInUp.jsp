<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignIn/UpPage</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="forms">

		<!-- Formulaire de Connexion -->
		<form action="SignInController" method="post" class="signForms">
			<div class="form-group">
				<label for="email">Adresse Mail</label> <input type="email"
					class="form-control" id="email" name="email" required
					aria-describedby="emailHelp" placeholder="Adresse Mail"> <small
					id="emailHelp" class="form-text text-muted">We'll never
					share your email with anyone else.</small>
			</div>
			<div class="form-group">
				<label for="pwd">Password</label> <input type="password"
					class="form-control" id="pwd" name="pwd" required
					placeholder="Password" aria-describedby="passwordHelpBlock">
				<small id="passwordHelpBlock" class="form-text text-muted">
					Your password must be 8-20 characters long, contain letters and
					numbers, and must not contain spaces, special characters, or emoji.
				</small>
			</div>
			<div class="form-group">
				<c:out value='${ invalidLogin }' />
			</div>
			<button type="submit" class="btn btn-primary">Connection</button>
		</form>

		<!-- Formulaire d'inscription -->
		<form action="SignUpController" method="post" class="signForms">
			<div class="form-group">
				<label for="firstName">Prenom</label> <input type="text"
					class="form-control" id="firstName" name="firstName" required
					placeholder="Prenom">
			</div>
			<div class="form-group">
				<label for="lastName">Nom</label> <input type="text"
					class="form-control" id="lastName" name="lastName" required
					placeholder="Nom">
			</div>
			<div class="form-group">
				<label for="dob">Date de Naissance</label> <input type="text"
					class="form-control" id="dob" name="dob" required
					placeholder="Date de Naissance">
			</div>
			<div class="form-group">
				<label for="email">Adresse Mail</label> <input type="email"
					class="form-control" id="email" name="email" required
					aria-describedby="emailHelp" placeholder="Adresse Mail"> <small
					id="emailHelp" class="form-text text-muted">We'll never
					share your email with anyone else.</small>
			</div>
			<div class="form-group">
				<label for="pwd">Password</label> <input type="password"
					class="form-control" id="pwd" name="pwd" required
					placeholder="Password" aria-describedby="passwordHelpBlock">
				<small id="passwordHelpBlock" class="form-text text-muted">
					Your password must be 8-20 characters long, contain letters and
					numbers, and must not contain spaces, special characters, or emoji.
				</small>
			</div>
			<div class="form-group">
				<c:out value='${ invalid }' />
			</div>
			<button type="submit" class="btn btn-primary">Inscription</button>
		</form>
	</div>
</body>
</html>