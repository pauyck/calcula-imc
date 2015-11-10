<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Calcular IMC</title>

<link rel="stylesheet" type="text/css" href="estilo.css">
<script type="text/javascript" src="acoes.js"></script>

</head>
<!-- This is a very simple parallax effect achieved by simple CSS 3 multiple backgrounds, made by http://twitter.com/msurguy -->

<!-- 
 * parallax_login.html
 * @Author original @msurguy (tw) -> http://bootsnipp.com/snippets/featured/parallax-login-form
 * @Tested on FF && CH
 * @Reworked by @kaptenn_com (tw)
 * @package PARALLAX LOGIN.
-->
        <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
        <body>
    <div class="container">
		<div class="row vertical-offset-100">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row-fluid user-row">
							<a href="http://www.xpersites.com.br" title="Xpersites Agência Web"><img src="http://www.xpersites.com.br/images/object554312304.png"
								class="img-responsive" alt="Conxole Admin" /></a>
						</div>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" role="form" class="form-signin">
							<fieldset>
								<label class="panel-login">
									<div class="login_result"></div>
								</label> <input class="form-control" placeholder="Nome" id="nome"
									name="nome" type="text"><br /> <input
									class="form-control" placeholder="Altura" type="text"
									id="altura" name="altura"><br /> <input
									class="form-control" placeholder="Peso" type="text" id="peso"
									name="peso"> <br></br> <input
									class="btn btn-lg btn-success btn-block" type="submit"
									id="login" value="--- Calcular ---"></br>

								<%
    	String paramAltura = request.getParameter("altura");
    	paramAltura = paramAltura == null ? "0" : paramAltura;
    	float altura = Float.parseFloat(paramAltura);
    	
    	String paramPeso = request.getParameter("peso");
    	paramPeso = paramPeso == null ? "0" : paramPeso;
    	float peso = Float.parseFloat(paramPeso);
    	
    	float imc;
    	if(altura==0){
    		
    		imc =0;
    	}else {
    	imc = peso/(altura*altura);
    	}
    	
    	String status;
    	
    	if(imc >= 17 && imc<=18.49){
    		status = "Você Está Abaixo do Peso";
    	}
    	else if(imc >= 18.5 && imc<=24.99){
    		status = "Seu Peso Está Normal";
    	}
    	else if(imc >= 25 && imc<=29.99){
    		status = "Você Está Acima do Peso";
    	}else{
    		status= "Sem Calculo";
    	}
    %>
								<br> <br>
								<h2>
									<b>IMC:</b>
									<% out.print(imc);%>
									<br> RESULTADO:
									<% out.print(status); %>
								</h2>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

