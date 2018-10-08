<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" href="home.jsp">Logo</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Expertise</a></li>
			<li class="nav-item"><a class="nav-link" href="CdcController">Cahiers
					des Charges</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Licences</a></li>
			<c:choose>
				<c:when test="${ not empty sessionScope.isConnected }">
					<li class="nav-item"><a class="nav-link"
						href="profilPerso.jsp">Mon Profil</a>
				</c:when>
				<c:otherwise>
					<li class="nav-item"><a class="nav-link" href="signInUp.jsp">Mon
							Compte</a>
				</c:otherwise>
			</c:choose>
			</li>
		</ul>
	</div>
	</nav>
</body>
</html>