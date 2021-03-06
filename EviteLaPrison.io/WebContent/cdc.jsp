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
	<jsp:include page="header.jsp"></jsp:include>
	<div class="cdcList">
		<c:forEach items="${ cdcs }" var="cdc">
			<div class="cdc">
				<h3>
					<c:out value="${ cdc.getNom() }" />
				</h3>
				<p>
					<c:out value="${ cdc.getDescription() }" />
				</p>
				<form action="CdcController" method="post">
					<input type="hidden" value="${ cdc.getCdcId() }" name="cdcId"/>
					<input type="submit" value="En savoir plus" />
				</form>
			</div>
		</c:forEach>
	</div>

</body>
</html>