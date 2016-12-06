<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="includes\header.jsp">
	<jsp:param name="client" value="${client}" />
</jsp:include>
<body>
	<div class="section">
		<div class="container">
			<div class="row">

				<div class="col-md-4">
					<jsp:include page="includes/menuLateral.jsp">
						<jsp:param name="categorieList" value="${categorieList}" />
						<jsp:param name="marqueList" value="${marqueList}" />
						<jsp:param name="categorieActive" value="${categorieActive}" />
					</jsp:include>
				</div>
				<div class="col-md-8">

					<form role="form"  method="post" action="Inscription">
						<div class="form-group">
							<label class="control-label">Nom</label> <input id="nomClient"
								name="nomClient" class="form-control" type="text"
								placeholder="Nom" value="<c:out value="${client.nom}"/>"/>
							<span class='inline-block highlight-error'>${form.erreurs['nomClient']}</span>
						</div>
						<div class="form-group">
							<label class="control-label">Prénom</label> <input
								id="prenomClient" name="prenomClient" class="form-control"
								type="text" placeholder="Prenom"
								value="<c:out value="${client.prenom}"/>"/> <span
								class='inline-block highlight-error'>${form.erreurs['prenomClient']}</span>
						</div>
						<div class="form-group">
							<label class="control-label">Date de Naissance</label> <input
								id="dateDeNaissanceClient" name="dateDeNaissanceClient"
								class="form-control" type="date"
								value="<c:out value="${client.dateDeNaissance}"/>"/> <span
								class='inline-block highlight-error'>${form.erreurs['dateDeNaissanceClient']}</span>
						</div>
						<div class="form-group">
							<label class="control-label">Adresse <br>
							</label> <input id="adresseClient" name="adresseClient"
								class="form-control" placeholder="Adresse" type="text"
								value="<c:out value="${client.adresse}"/>"/> <span
								class='inline-block highlight-error'>${form.erreurs['adresseClient']}</span>
						</div>
						<div class="form-group">
							<label class="control-label">Téléphone</label> <input
								id="telephoneClient" name="telephoneClient"
								class="form-control" type="tel"
								value="<c:out value="${client.telephone}"/>"/> <span
								class='inline-block highlight-error'>${form.erreurs['telephoneClient']}</span>
						</div>
						<div class="form-group">
							<label class="control-label" for="emailClient">Email
								address</label> <input id="emailClient" name="emailClient"
								class="form-control" placeholder="Enter email" type="email"
								value="<c:out value="${client.email}"/>"/> <span
								class='inline-block highlight-error'>${form.erreurs['emailClient']}</span>
						</div>
						<div class="form-group">
							<label class="control-label" for="exampleInputPassword1">Password</label>
							<input id="passwordClient" name="passwordClient"
								class="form-control" type="password" placeholder="Password">
							<span class='inline-block highlight-error'>${form.erreurs['passwordClient']}</span>
						</div>
						<div class="form-group">
							<label class="control-label">Confirmation</label> <input
								id="passwordConfirmClient" name="passwordConfirmClient"
								class="form-control" type="password" placeholder="Password"/>
							<span class='inline-block highlight-error'>${form.erreurs['passwordConfirmClient']}</span>
						</div>
							<center>
								<button type="submit" class="btn btn-info">Submit</button>
							</center>
					</form>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
</body>
</html>