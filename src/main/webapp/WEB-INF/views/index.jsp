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
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Start Software</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="<c:url value='/'/>">P�gina Principal</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Cadastrar <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value='/mercadoria/form'/>">Mercadoria</a></li>
						<li><a href="<c:url value='/fornecedor/form'/>">Fornecedor</a></li>
					</ul></li>
				<li><a href="<c:url value='/fornecedor/list'/>">Listar Mercadorias</a></li>
			</ul>
		</div>
	</nav>

	
	P�GINA INICIAL
	
	
</body>

