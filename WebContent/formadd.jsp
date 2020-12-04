<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<meta name="description" content="Tela Cadastro">
	<meta name="author" content="Marcela Amorim">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>CINEMAX</title>
	<link rel="stylesheet" href="assets/css/formaddmain.css" />
	<link rel="stylesheet" href="assets/css/comboBox.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
</head>

<body class="is-preload">
	<!-- Breadcrumb -->
	<ul class="breadcrumb">
		<li><a href="func.html">LISTAGEM</a></li>
		<li>NOVO</li>
	</ul>

	<!-- Main -->
	<div id="main">
		<header class="major container medium">
		<div class="tooltip"><h2>Cadastro de Agendamento</h2>
			<span class="tooltiptext">Ao clicar em cadastrar os dados só são excluídos de forma direcionada</span>
			  </div>
		</header>
	</div>

	<!-- Footer -->
	<div id="footer">
		<div class="container medium" id="contato">
			<header class="major last">
				<form method="post" action="/ESIIIparatestar/controle">
					<label align="left">Sala</label>	<br>
					<div class="row">
						<div class="col-6 col-12-mobilep">
							<select required="" id="txtCodigo" name='txtCodigo'>
								<option value="">Selecione o codigo da sala</option>
								<option value="l">Sala 01</option>
								<option value="10">Sala 02</option>
								<option value="12">Sala 03</option>
								<option value="16">Sala 04</option>
								<option value="18">Sala 05</option>
								<option value="18">Sala 06</option>
							 </select>
						</div>
						<div class="col-6 col-12-mobilep">
							<select name="tipo" required="">
								<option value="">Selecione o tipo da sala</option>
								<option value="">comum</option>
								<option value="">VIP</option>
						 </select>
							</div>
						<div class="col-12">
							<input type="text" name="capacidade" required="" placeholder="Digite a capacidade da sala" />
						</div>
						</select>
						<label>Sessão</label><br>
						<div class="col-12">
							<select name="faixaE" required="">
								<option value="">Selecione a faixa etária da sessão</option>
								<option value="l">L</option>
								<option value="10">10</option>
								<option value="12">12</option>
								<option value="16">16</option>
								<option value="18">18</option>
							 </select>
						</div>
						<div class="col-6 col-12-mobilep">
							<input type="text" name="valorM" placeholder="Digite o valor da entrada meia" />
						</div>
						<div class="col-6 col-12-mobilep">
							<input type="text" name="valorI" required="" placeholder="Digite o valor da entrada inteira" />
						</div>
						<div class="col-12">
							<input placeholder="Selecione data inicial de exibição" type="date" required="required"  maxlength="10" name="dtI" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" min="2020-01-01" max="2021-06-01" >
						</div>
						<div class="col-6 col-12-mobilep">
							<input type="text" name="dtS" required="" placeholder="Digite a data final da exibição">
						</div>
						<div class="col-6 col-12-mobilep">
							<textarea name="horarios" required="" placeholder="Digite horários das sessões"></textarea>
						</div>
						<label>Filme</label><br>
						<div class="col-12">
							<input type="text" name="titulo" placeholder="Digite o título do filme"required="">
						</div>
						<div class="col-6 col-12-mobilep">
							<input type="text" name="ano" placeholder="Digite o ano de estreia" required=""/>
						</div>
						<div class="col-6 col-12-mobilep">
							<input type="text" name="duracao" placeholder="Digite a duração do filme" required=""/>
						</div>
						<div class="col-12">
							<textarea name="elenco" placeholder="Digite o elenco principal do filme" required=""></textarea>
						</div>
						<div class="col-12">
							<textarea name="sinopse" placeholder="Digite a sinopse do filme em cartaz" required=""></textarea>
						</div>
						<div class="col-12">
							<!-- <label align="left" for="myfile" required="">Clique aqui para selecionar arquivo do cartaz</label>
								  <input type="file" id="myfile" name="file" accept="image/*" required="required" ><br><br> -->
							</div>
			
						<div class="col-12">
							<ul class="actions special">
									
								<li><input type="submit" value="CADASTRAR" id="operacao" name="operacao"/></li>
							</ul>
						</div>
					</div>
				</form>
			</header>
			<ul class="copyright">
				<li>&copy; Todos os direitos reservados</li>
				<li>CineMax</li>
			</ul>

		</div>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	

</body>

</html>