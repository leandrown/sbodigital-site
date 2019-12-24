<!--#include file="func.asp"-->
<%

email = PQ(request("email"))

Set user = Server.CreateObject("ADODB.Recordset")
user.Open "SELECT nome,senha,sexo, email FROM socios where email = '" & email & "' ", Bco
if user.eof then
   
   	session("msg") = "Erro"
	response.redirect("EsqueciSenha.asp")
else
   
	nome = user("nome")
	senha = user("senha")
	sexo = user("sexo")

	sx = "o"   
    if sexo = "F" then sx = "a"


texto = "<style type=text/css> .fonte { font-family: arial; font-size: 12px;} </style>  <img src=https://www.sbodigital.org.br/img/LogoM.png><br><br><span class=fonte>Olá, <b>" & nome & ",</b><br><br>Esqueceu sua senha? Seguem seus dados de acesso abaixo: <br><br><strong>E-mail: </strong>" & email & "<br><strong>Senha de acesso:</strong> " & senha & "<br><br>Para a sua segurança, guarde seus dados em local seguro.<br><br><br>Atenciosamente,<br><strong>SBODigital</strong></span><br><br>"


Set objCDOSYSMail = Server.CreateObject("CDO.Message")
    Set objCDOSYSCon = Server.CreateObject ("CDO.Configuration")
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp2.locaweb.com.br"
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 30 
    objCDOSYSCon.Fields.update 
    
    Set objCDOSYSMail.Configuration = objCDOSYSCon
    objCDOSYSMail.From = """SBODigital"" <sbod@sbodigital.org.br>"

	
	objCDOSYSMail.Subject = "SBODigital - Esqueci minha senha"
	objCDOSYSMail.HtmlBody = texto

	'email = "contato@solangepaulino.com.br"
	email = user("email")
	objCDOSYSMail.To = email  
	objCDOSYSMail.Bcc = "contato@solangepaulino.com.br"		
	
	On Error Resume Next
	objCDOSYSMail.Send 
	Set objCDOSYSMail = Nothing 
	Set objCDOSYSCon = Nothing 

	session("msg") = "Enviado"
	response.redirect("EsqueciSenha.asp")
	 
	 end if
user.close
set user = nothing
bco.close
set bco = nothing

%>