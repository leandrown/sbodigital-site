<!--#include file="func.asp"-->
<%
   
'session("cod")    = 31

if session("cod") = "" or isnull(session("cod")) then 
   session("erro") = "expired"
   response.redirect("login.asp")
end if
   
Set rs = Server.CreateObject("ADODB.Recordset")
rs.Open "SELECT * FROM socios where cod_socio = " & session("cod"), Bco

if rs.eof then
   	session("erro") = "ne"
	response.redirect("login.asp")
else
   
sexo = rs("sexo")   
   sx = "o"
   if sexo = "F" then sx = "a"
   
%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<link href="sbod.ico" rel="icon" type="image/x-icon" />	
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">

   <title>SBODigital</title>
	<link href="css/padrao.css?novo" rel="stylesheet" type="text/css">
	
   <link rel="stylesheet" media="screen" href="css/sbod-theme.css">
   <!-- Bootstrap -->
   <link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
	<script src="js/validator.min.js"></script>   
   <!-- Font Awesome -->
   <script src="https://kit.fontawesome.com/af40653a1b.js" crossorigin="anonymous"></script>
</head>
<body>

   <header>
      <!-- Navigation Bar -->
     <!--#include file="menu.asp"-->
   
      <section id="form-area">
   
    <div id="conteudo">
        <div class="centro">
           <div class="texto s_ext">


   <div class="titulo">
        <div class="chamada">
          <h1>
          		Área do Associado</h1></div>
 	</div>
	<p>&nbsp;</p>
  <div class="row">
	    <div class="form-group col-md-12">
<label for="inputEmail">Nome d<%=sx%> associad<%=sx%>: </label>			
      <br>
      <strong><%=rs("nome")%></strong>
        </div>

	
	
	<div class="form-group col-md-12">
      <label for="inputEmail">E-mail</label>
de cadastro:     <br>
      <strong><%=rs("email")%></strong>
    </div>
	
	
	
	<div class="form-group col-md-4">
      <label for="inputRG">Data de cadastro</label>
      <br>
      <strong><%=data_func(rs("data"))%></strong>
    </div>
  	  	
</div>
		
<div class="form-row">
	<form name="cadastros" id="cadastro" method="post" action="recadastro.asp">	
		<input type="submit" value="Editar meus dados">
	</form>	
	
	<form name="cadastros" id="cadastro" method="post" action="Anuidade2via.asp">	
		<input type="submit" value="Pagamento Anuidade">
	</form>	
	
</div>

	
<div class="form-row"> <a href="logout.asp"><img src="img/logout.png" alt=""/></a></div>	
		
</div>

<br>       

     </div>


</div>
   </section>

   <footer>
      <!--#include file="footer.asp"-->
   </footer>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
   <!-- Bootstrap -->
<script src="js/bootstrap.bundle.min.js"></script>
   <!-- Accessibility Bar -->
<script src="js/jquery-accessibility.min.js"></script>
<script>
      var zoom;

      function setStyle(styleid) {
         var increase_contrast = document.getElementById('increase_contrast');
         var yellow_black = document.getElementById('yellow_black');
         var invert_grayscale = document.getElementById('invert_grayscale');
         var invert_color = document.getElementById('invert_color');
         var grayscale = document.getElementById('grayscale');

         increase_contrast.disabled = true;
         yellow_black.disabled = true;
         invert_grayscale.disabled = true;
         invert_color.disabled = true;
         grayscale.disabled = true;

         if (styleid) {
            var atual = document.getElementById(styleid);
            atual.disabled = false;
         }
      }

      window.onload = setStyle();

      function zoomInit() {
         zoom = parseInt(localStorage.getItem('zoom') || 100);
         document.getElementsByTagName('body')[0].style.zoom = zoom + '%';
      }

      zoomInit();

      function zoomIn() {
         zoom += 20;
         document.getElementsByTagName('body')[0].style.zoom = zoom + '%';
         localStorage.setItem('zoom', zoom);
      }

      function zoomOut() {
         if (zoom > 100) {
            zoom -= 20;
            document.getElementsByTagName('body')[0].style.zoom = zoom + '%';
            localStorage.setItem('zoom', zoom);
         }
      }
   </script>
</body>

</html>
<%
  
   end if
   rs.close
   set rs = nothing
   
   bco.close
   set bco = nothing
%>