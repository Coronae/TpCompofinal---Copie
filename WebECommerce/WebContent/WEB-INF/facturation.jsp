<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="includes\header.jsp">
	<jsp:param name="client" value="${client}" />
</jsp:include>
<body>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<center>
						<h1>Facturation</h1>
					</center>
					<form role="form" action="Facturation">
						<div class="form-group">
							<label class="control-label" for="numero">Numéro de la carte</label> <input
								class="form-control" id="numero" placeholder="000XXXXXXXXX00"
								type="text">
						</div>
						<div class="form-group">
							<label class="control-label" for="cryptogramme">Cryptogramme
								visuel</label> <input class="form-control" id="cryptogramme"
								placeholder="000" type="text">
						</div>
						<center>
							<a class="btn btn-warning btn-block" href="/FacturationValid">Payer</a></div>
						</center>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>