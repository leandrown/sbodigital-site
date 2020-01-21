<!--#include file="func.asp"-->
<!DOCTYPE html>
<html lang="pt-br">

<head>
   <link href="sbod.ico" rel="icon" type="image/x-icon" />
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">

   <title>SBODigital</title>
   <link href="css/padrao.css" rel="stylesheet" type="text/css">

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

      <section id="conteudo" class="login">
         <div class="container">
            <div class="row justify-content-center">
               <div class="col col-sm-8">
                  <div class="banner-login"></div>
               </div>
            </div>

            <%
		if session("erro") <> "" and not isnull(session("erro")) then

		Select Case session("erro")
			Case "fail" msg = "<span class=alert-danger><strong>ALERTA!</strong> E-mail ou senha inválidos, verifique seus dados novamente.</span>"
		    Case "erro" msg = "<span class=alert-danger><strong>ALERTA!</strong> Cadastro já existe! Efetue seu login abaixo.</span>"
			Case "expired" msg = "<span class=alert-warning><strong>ALERTA!</strong> Sua sessão de login foi expirada. Entre novamente</span>"
		End Select

		%>
            <div class="row justify-content-center"><%=msg%>
            </div><br>

            <%
		session("erro") = ""
		end if
		%>

            <div class="row justify-content-center">
               <div class="col-sm-4">
                  <!-- LOGIN -->
                  <div class="card">
                     <article class="card-body">
                        <header class="mb-4">
                           <h4 class="card-title">Sou Cadastrado</h4>
                        </header>
                        <form name="cadastro" id="cadastro" method="post" action="LoginCheck.asp" data-toggle="validator">
                           <div class="form-row">
                              <div class="form-group col-sm-12">
                                 <label for="email">E-mail ou CPF</label>
                                 <input type="text" name="email" id="email" class="form-control" placeholder="" required>
                              </div>
                           </div>
                           <div class="form-row">
                              <div class="form-group col-sm-12">
                                 <label for="senha">Senha</label>
                                 <input type="password" name="senha" id="inputPassword" class="form-control" placeholder="" required>
                                 <small class="form-text text-muted"><a href="EsqueciSenha.asp">Esqueci minha senha</a></small>
                              </div>
                           </div>
                           <div class="form-row justify-content-center">
                              <div class="form-group col-sm-8">
                                 <input type="submit" value="Entrar">
                              </div>
                           </div>
                        </form>
                     </article>
                  </div>
                  <!-- LOGIN END -->
               </div>
               <div class="col-sm-4">
                  <!-- REGISTER -->
                  <div class="card">
                     <article class="card-body">
                        <header class="mb-4">
                           <h4 class="card-title">Quero me Cadastrar</h4>
                        </header>
                        <form name="novo" id="novo" method="post" action="ValidaNovoSocio.asp" data-toggle="validator">
                           <div class="form-row">
                              <div class="form-group col-sm-12">
                                 <label for="cpf-reg">Digite seu CPF</label>
                                 <input type="text" name="cpf-reg" id="cpf-reg" class="form-control" placeholder="" required>
                              </div>
                           </div>
                           <div class="form-row">
                              <div class="form-group col-sm-12">
                                 <label for="email">E-mail</label>
                                 <input type="email" name="email" id="email" class="form-control" placeholder="" required>
                              </div>
                           </div>
                           <div class="form-row">
                              <!-- <div class="form-group col-sm-6">
                              <label for="p1">Criar senha</label>
                              <input type="password" name="p1" id="p1" class="form-control">
                           </div>
                           <div class="form-group col-sm-6">
                              <label for="p2">Repetir senha</label>
                              <input type="password" name="p2" id="p2" class="form-control">
                           </div> -->
                           </div>
                           <div class="form-row justify-content-center">
                              <div class="form-group col-md-8">
                                 <br><input type="submit" value="Cadastrar">
                              </div>
                           </div>
                        </form>
                     </article>
                  </div>
                  <!-- REGISTER END -->
               </div>
            </div>
         </div>
      </section>

      <footer>
         <!-- Including Footer -->
         <!--#include file="footer.asp"-->
         <!-- End Footer -->
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
