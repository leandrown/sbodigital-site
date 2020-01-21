<!DOCTYPE html>
<html lang="pt-br">

<head>
   <link href="sbod.ico" rel="icon" type="image/x-icon" />	
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">

   <title>SBODigital</title>

   <link rel="stylesheet" media="screen" href="css/sbod-theme.css">

   <!-- Bootstrap 4 -->
   <link rel="stylesheet" media="screen" href="css/bootstrap.min.css">

   <!-- Font Awesome -->
   <script src="https://kit.fontawesome.com/af40653a1b.js" crossorigin="anonymous"></script>
</head>

<body>
   <header>
      <!--#include file="menu.asp"-->
   </header>

   <section id="contact">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col col-sm-8">
               <div class="banner-contato"></div>
            </div>
         </div>
		<% if session("msg") <> "" and not isnull(session("msg")) then %>
		<div class="row justify-content-center"><span class=alert-warning>E-mail enviado com sucesso!</span></div><br>
		<% 
		session("msg") = ""
		end if
		%>         
		  <div class="row justify-content-center">
            <div class="col-sm-8">
               <h1>Entre em Contato</h1>
               <form action="ContatoEnvia.asp" method="post">
                  <div class="form-row">
                     <div class="col-sm-8">
                        <div class="form-group">
                           <label for="nome">Nome</label>
                           <input type="text" class="form-control" name="nome" id="nome" placeholder="" required>
                        </div>

                        <div class="form-group">
                           <label for="email">E-mail</label>
                           <input type="email" class="form-control" name="email" id="email" placeholder="" required>
                        </div>
                        <div class="form-group">
                           <label for="assunto">Assunto</label>
                           <input type="text" class="form-control" name="assunto" id="assunto" placeholder="" required>
                        </div>
                        <div class="form-group">
                           <label for="msg">Mensagem</label>
                           <textarea class="form-control" name="mensagem" id="mensagem" cols="80" rows="8" placeholder="" required></textarea>
                        </div>
                        <div class="form-group">
                           <input type="submit" value="Enviar">
                        </div>
                     </div>
                     <div class="col-sm-4">
                        <div class="">
                           <div class="card-body">
                              <h4>SBO Digital</h4>
                              <p><i class="fas fa-phone-alt"></i> (11) 99324-9262</p>
                              <p><a href="mailto:sbod@sbodigital.org.br">sbod@sbodigital.org.br</a></p>
                           </div>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </section>

   <footer>
      <!--#include file="footer.asp"-->
   </footer>

   <!-- jQuery and Bootstrap 4 -->
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
   <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>
