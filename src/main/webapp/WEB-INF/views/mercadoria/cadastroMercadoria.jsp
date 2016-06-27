<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.css'/>">
<script src="<c:url value='/assets/js/bootstrap.js'/>"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<body style="background-color: #C0C0C0;">
	<div>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Start Software</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="<c:url value='/'/>">Página
							Principal</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Cadastrar <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/mercadoria/form'/>">Mercadoria</a></li>
							<li><a href="<c:url value='/fornecedor/form'/>">Fornecedor</a></li>
						</ul></li>
					<li><a href="#">Listar Mercadorias</a></li>
				</ul>
			</div>
		</nav>
	</div>


	<div class="col-md-4"></div>

	<div class="col-md-4">
		<label for="inputsm" style="text-align: center">Informações da Mercadoria:</label> 
		<br /> <br />

		<form:form servletRelativeAction="/mercadoria" commandName="mercadoria" method="POST">
			<div class="form-group">
				<label for='nome'>Nome</label>
				<form:input type="text" class="form-control input-sm" path='nome' placeholder="Digite o nome da mercadoria" />
			</div>

			<div class="form-group"> 
				<label for="preco">Preço</label>
				<form:input type="text" class="form-control input-sm" path="preco" placeholder="Digite o preço da mercadoria" />
			</div>
			
			<div class="form-group">
			
				<div class="dropdown"><button style="background-color: #808080;" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"> Lista de Fornecedores <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<c:forEach items='${fornecedores}' var='object'>
							<li><a href="#">${object.nomeFantasia}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
			<br /> <br />

			<button type="submit" class="btn btn-primary btn-block"
				style="background-color: #008000;">Cadastrar</button>
		</form:form>
	</div>


</body>

