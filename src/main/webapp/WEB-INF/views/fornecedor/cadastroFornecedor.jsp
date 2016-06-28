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
				<li class="active"><a href="<c:url value='/'/>">Página Principal</a></li>
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
	</div>
	
	
	<div class="col-md-4"></div>

	<div class="col-md-4" >
		<label for="inputsm" style="text-align: center">Cadastro Fornecedor:</label>
		<br/><br/>
	
		<form:form servletRelativeAction="/fornecedor" commandName="fornecedor" method="POST">
			<div class="form-group">
				<label for="cnpj">CNPJ</label>  
				<form:input type="text" class="form-control input-sm" path="cnpj" placeholder="Digite o CNPJ do fornecedor (apenas números)"/>
			</div>
			
			<div class="form-group">
				<label for="razaoSocial">Razão Social</label>  
				<form:input type="text" class="form-control input-sm" path="razaoSocial" placeholder="Digite a razão social"/>
			</div>
			
			<div class="form-group">
				<label for="nomeFantasia">Nome Fantasia</label>  
				<form:input type="text" class="form-control input-sm" path="nomeFantasia" placeholder="Digite o nome fantasia do fornecedor"/>
			</div>
			
			<br/>
			<label for="inputsm" style="text-align: center">Informações de Endereço:</label>
			<br/><br/>
			
			<div class="form-group">
				<label for="endereco.rua">Rua</label>  
				<form:input type="text" class="form-control input-sm" path="endereco.rua" placeholder="Digite o nome da rua"/>
			</div>
			
			<div class="form-group">
				<label for="endereco.bairro">Bairro</label>  
				<form:input type="text" class="form-control input-sm" path="endereco.bairro" placeholder="Digite o nome do bairro"/>
			</div>
			
			<div class="form-group">
				<label for="endereco.numero">Número</label>  
				<form:input type="text" class="form-control input-sm" path="endereco.numero" placeholder="Digite o número localidade"/>
			</div>
			
			<div class="form-group">
				<label for="endereco.cidade">Cidade</label>  
				<form:input type="text" class="form-control input-sm" path="endereco.cidade" placeholder="Digite o nome da cidade"/>
			</div>
			
			<div class="form-group">
				<label for="endereco.estado">Estado</label>  
				<form:input type="text" class="form-control input-sm" path="endereco.estado" placeholder="Digite o estado (ex: PB)"/>
			</div>
			
			<button type="submit" class="btn btn-primary btn-block" style="background-color: #008000;">Cadastrar</button>
		</form:form>
	</div>


</body>

