<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Calcular IMC</title>
<link rel="stylesheet" href="css/estilo.css">

<script type="text/javascript">
$(document).ready(function(){
	  $(document).mousemove(function(e){
	     TweenLite.to($('body'), 
	        .5, 
	        { css: 
	            {
	                backgroundPosition: ""+ parseInt(event.pageX/8) + "px "+parseInt(event.pageY/'12')+"px, "+parseInt(event.pageX/'15')+"px "+parseInt(event.pageY/'15')+"px, "+parseInt(event.pageX/'30')+"px "+parseInt(event.pageY/'30')+"px"
	            }
	        });
	  });
	});
</script>

</head>


<body>
<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
<!-- This is a very simple parallax effect achieved by simple CSS 3 multiple backgrounds, made by http://twitter.com/msurguy -->

<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			  	
<h3 class="panel-title">Calcular o IMC</h3>

</div>
	
	<div class="panel-body">
  <form accept-charset="UTF-8" role="form">
  <fieldset>
    <div class="form-group"><input type="text" name="nome"></div>
    <div class="form-group"><input class="form-control" placeholder="Altura" type="text" name="altura"></div>
    <div class="form-group"><input class="form-control" placeholder="Peso" type="text" name="peso"></div>
    <input class="btn btn-lg btn-success btn-block" type="submit" value="Calcular">
    </fieldset>
    </form>
    
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
    <br>
    <br>
    <b>IMC:</b> <% out.print(imc);%>
    <br>
    <b>RESULTADO:</b> <% out.print(status); %>
    
  					</div>
			    </div>
			</div>
		</div>
	</div>

</body>
<!-- http://bootsnipp.com/snippets/featured/parallax-login-form -->
</html>

