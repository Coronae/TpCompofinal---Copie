<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="includes\header.jsp">
	<jsp:param name="client" value="${client}" />
</jsp:include>
<body>
	<div class="section">
		<div class="container">
			<div class="row">
	
				<div class="col-md-4"></div>
				<div class="col-md-8">
					<h2>Bravo vous etes inscrit ! </h2>
					<a href="index"><button class="btn btn-info">Accueil</button></a>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
</body>
</html>