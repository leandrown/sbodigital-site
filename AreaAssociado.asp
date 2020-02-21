<!--#include file="func.asp"-->
<%
   
'session("cod")    = 31

if session("cod") = "" or isnull(session("cod")) then 
   session("erro") = "expired"
   response.redirect("login.asp")
end if
   
Set rs = Server.CreateObject("ADODB.Recordset")
rs.Open "SELECT nome,email,cod_socio,data,anuidade,sexo FROM socios where cod_socio = " & session("cod"), Bco

if rs.eof then
   	session("erro") = "ne"
	response.redirect("login.asp")
else
   
sexo = rs("sexo")   
   sx = "o"
   if sexo = "F" then sx = "a"
   
if rs("anuidade") = "" or isnull(rs("anuidade")) or rs("anuidade") = 0 then
 	anuidade = "<font color='#9A0101'>Pendente</font>"
 else
	anuidade = "<font color='#299A01'>Em dia</font>"
 end if
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
					<h1>Área do Associado</h1></div>
 				</div>
									 
						<div class="row">
							<div class="form-group col-md-12">									 
								<label for="inputEmail">Nome d<%=sx%> associad<%=sx%></label>		
								<br><strong><%=rs("nome")%></strong>
							</div>

							<div class="form-group col-md-12">
								<label for="inputEmail">E-mail de cadastro</label>
								<br><strong><%=rs("email")%></strong>
							</div>

							<div class="form-group col-md-12">
								<label for="inputCad">Data de cadastro</label>      
								<br><strong><%=data_func(rs("data"))%></strong>
							</div>


							<div class="form-group col-md-12">
							  <label for="inputAnu">Anuidade <%=year(now)%></label>      
							  <br><strong><%=anuidade%></strong>
							</div>
				
							<% if rs("anuidade") = "" or isnull(rs("anuidade")) or rs("anuidade") = 0 then %>
								<div class="row">
								<form name="cadastros" id="cadastro" method="post" action="Anuidade2via.asp">	
									<input type="submit" value="Pagamento Anuidade">
								</form>	
								</div>
							<% end if %>									 

							<% if rs("anuidade") = True or rs("anuidade") = 1 then %>	
							<div class="form-group col-md-12">
									 <hr noshade size="1" color="#CCCCCC">
							  <label for="inputPres"><span style="color: #FF0044"><strong>PRESENTE PARA ASSOCIADOS SBODigital</strong></span><strong><br></strong></label>
							  
<br>
(Criado por Priscila Thiemi Saito Campos)<br><br>
<a href="https://agmt.it/m/esrOIMEv?_branch_match_id=610492828816553284" target="_blank">https://agmt.it/m/esrOIMEv?_branch_match_id=610492828816553284</a>								
									<br> <img src="img/QRCode_AR.png" alt=""/>
						  </div>									 
							<% end if %>
									 
	
				<div class="form-group col-md-12">
					<form name="cadastros" id="cadastro" method="post" action="recadastro.asp">	
						<input type="submit" value="Editar meus dados">
					</form>
				</div>									 

							<div class="form-group col-md-12"><a href="logout.asp"><img src="img/logout.png" alt=""/></a></div>	

						</div>	
				</div>
			</div>
		</div>
</div>
									 
   </section>

   <footer>
      <!--#include file="footer.asp"-->
   </footer>

</body>

</html>
<%
  
   end if
   rs.close
   set rs = nothing
   
   bco.close
   set bco = nothing
%>