<!--#include file="func.asp"-->
<!DOCTYPE html>
<html lang="pt-br">

<head>
   <link href="sbod.ico" rel="icon" type="image/x-icon" />
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">

   <title>SBODigital - Admissão de Novo Sócio</title>
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
          		Esqueci minha senha</h1></div>
</div>
	

<form name="cadastros" id="cadastro" method="post" action="EsqueciSenhaEnvio.asp" data-toggle="validator" >
	<p>Digite abaixo seu e-mail de cadastro, você receberá um e-mail com seus dados de acesso:</p>
  <div class="row">
    <div class="col-md-12 col-sm-12">

				
  <div class="form-row">
 
	
	
	<div class="form-group col-md-6">
      <label for="inputEmail">Email cadastrado</label>
      <input type="email" class="form-control" id="email" name="email" value="" required>

<% 
if session("msg") <> "" and not isnull(session("msg")) then

Select Case session("msg")
	Case "Erro" msg = "<span class=alert-danger>E-mail não localizado!</span>"
	Case "Enviado" msg = "<span class=alert-warning>E-mail enviado com sucesso!</span>"
End Select

%>
<br><%=msg%>

<% 
session("msg") = ""
end if
%>
<br><br><input type="submit" value="Enviar">

<br><br> 
<a href="login.asp">Voltar página de login </a></div>
	


</div>

</div>

  </div>


</div>


</form>


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
   
   bco.close
   set bco = nothing
%>