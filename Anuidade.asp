<!--#include file="func.asp"-->
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
     Pagamento Anuidade Associação</h1></div>
 	</div>
			   Cadastro enviado com sucesso!<br>Clique no botão abaixo para realizar o pagamento da sua anuidade<br><br>
<%

Set rs = Server.CreateObject("ADODB.Recordset")
rs.Open "SELECT cod_socio,nome,email,cep,endereco,bairro,cidade,uf,celular,cpf FROM socios WHERE  cod_socio = " & session("cod"), Bco
if not rs.eof then

   
%>
	<form target="pagseguro" method="post" action="https://pagseguro.uol.com.br/checkout/checkout.jhtml">
                                        <input type="hidden" name="email_cobranca" value="sbodigital2019@gmail.com">
                                        <input type="hidden" name="tipo" value="CP">
                                        <input type="hidden" name="moeda" value="BRL">
                                        <input type="hidden" name="item_id_1" value="<%=rs("cod_socio")%>">
                                        <input type="hidden" name="item_descr_1" value="Anuidade SBOD">
                                        <input type="hidden" name="item_quant_1" value="1">
                                        <input type="hidden" name="item_valor_1" value="400,00">
                                        <input type="hidden" name="item_frete_1" value="0">
                                        <input type="hidden" name="item_peso_1" value="0">
                                        <input type="hidden" name="cliente_nome" value="<%=rs("nome")%>">
                                        <input type="hidden" name="cliente_cep" value="<%=rs("cep")%>">
                                        <input type="hidden" name="cliente_end" value="<%=rs("endereco")%>">
                                        <input type="hidden" name="cliente_num" value="">
                                        <input type="hidden" name="cliente_bairro" value="<%=rs("bairro")%>">
                                        <input type="hidden" name="cliente_cidade" value="<%=rs("cidade")%>">
                                        <input type="hidden" name="cliente_uf" value="<%=rs("uf")%>">
                                        <input type="hidden" name="cliente_pais" value="BRA">
                                        <input type="hidden" name="cliente_ddd" value="">
                                        <input type="hidden" name="cliente_tel" value="<%=rs("celular")%>">
                                        <input type="hidden" name="cliente_email" value="<%=rs("email")%>">
                                        <center>
                                          <br>
                                          <input type="image" 
src="img/logo-pagseguro.png" 
name="submit" alt="Pague com PagSeguro - &eacute; r&aacute;pido, gr&aacute;tis e seguro!">
                                        </center>
                                      </form>
	<p><br>
<%
   else %>
	
	Sua sessão expirou, entre em contato com a SBODigital pelo email contato@sbodigital.org.br
	
<% 
   end if
   rs.close
   set rs = nothing
%>
</p>


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