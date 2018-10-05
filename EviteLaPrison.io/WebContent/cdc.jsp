<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cdc Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
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
			<li class="nav-item"><a class="nav-link" href="home.jsp">Home
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Expertise</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="CdcServlet">Cahiers des Charges <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Licences</a></li>
			<li class="nav-item"><a class="nav-link" href="signInUp.jsp">Mon
					Compte</a></li>
		</ul>
	</div>
	</nav>

	<div class="cdcList">
		<c:forEach items="${ cdcs }" var="cdc">
			<div class="cdc">
				<h3>
					<c:out value="${ cdc.getNom() }" />
				</h3>
				<p>
					<c:out value="${ cdc.getDescription() }" />
				</p>
			</div>
		</c:forEach>
	</div>

</body>
</html>