<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Calcular IMC</title>
</head>
<body>
<H1>Calcular o IMC</H1><hr>
  <form>
    Nome: <input type="text" name="nome">
    <br>
    Altura: <input type="text" name="altura">
    <br>
    Peso: <input type="text" name="peso">
    <br>
    <input type="submit">
    
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
    
  </form>
</body>
</html>