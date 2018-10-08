<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style/style.css">
<title>Home</title>
</head>
<body class="homeBody">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="banner">
		<h1>EVITE LA PRISON.IO</h1>
	</div>
	<div class="homePres">
		<div class="textPosition">
			<h3>QUI SOMMES NOUS</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum</p>
		</div>
		<div class="textPosition">
			<img src="style/officeMeeting.jpg" />
		</div>
	</div>
	<div class="homeExpert">
		<div>
			<h3>Besoin d'une expertise faite par des professionnels?</h3>
			<p>Déposez-nous vote cahier des charges, réponse sous 48h.</p>
			<p>Pour plus d'informations sur nos expertises, rendez-vous sur
				la page EXPERTISE.</p>
			<button href="expertise.jsp" type="button" class="btn btn-primary">En
				savoir plus</button>
		</div>
	</div>
	<div class="homeCdc">
		<div class="textPosition">
			<img src="style/officeMeeting2.jpg" />
		</div>
		<div class="textPosition">
			<h3>CAHIER DES CHARGES</h3>
			<p>Vous avez besoin d'aide, de conseils...</p>
			<p>Vous trouverez des exemples de cahiers des charges ainsi que
				des conseils pour la création de votre propre cahier des charges.</p>
			<p>Vos projets ne seront plus un rêve.</p>
			<button href="CdcController" type="button" class="btn btn-primary">En
				savoir plus</button>
		</div>
	</div>
	<div class="homeLice">
		<div class="textPosition">
			<h3>LICENCES</h3>
			<p>Vous avez besoin d'aide, de conseils...</p>
			<p>Vous trouverez les licences les plus utilisées, les raisons
				pour lesquelles ce sont les plus connues ainis que les enjeux qui en
				découlent.</p>
			<p>Renseignez-vous ici.</p>
			<button href="CdcController" type="button" class="btn btn-primary">En
				savoir plus</button>
		</div>
		<div class="textPosition">
			<img src="style/licencePapers.jpg" />
		</div>
	</div>
	<div class="homeConnect">
		<div>
			<h3>Connectez-vous à votre compte</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			<form class="form-inline" action="SignInController" method="post"
				class="signForms">
				<input type="email" class="form-control mb-2 mr-sm-2"
					id="inlineFormInputName2" placeholder="Adresse Mail" name="email"
					required> <input type="password" class="form-control mb-2 mr-sm-2"
					id="inlineFormInputGroupUsername2" placeholder="Password"
					name="pwd" required>
				<button type="submit" class="btn btn-primary mb-2">Connection</button>
			</form>
			<h6>VOUS N'AVEZ PAS DE COMPTE?</h6>
			<h6>RENDEZ-VOUS SUR LA PAGE INSCRIPTION</h6>
			<button href="signInUp.jsp" type="button" class="btn btn-primary">Inscription</button>
		</div>
	</div>
</body>
</html>