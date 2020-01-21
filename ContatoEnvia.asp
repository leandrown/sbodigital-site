<!--#include file="func.asp"-->
<%

nome = PQ(request("nome"))
email = PQ(request("email"))
assunto = PQ(request("assunto"))
mensagem = PQ(request("mensagem"))

texto = "<style type=text/css> .fonte { font-family: arial; font-size: 12px;} </style>  <img src=https://www.sbodigital.org.br/img/LogoM.png><br><br><span class=fonte><strong>Nome: </strong>" & nome & "<br><strong>E-mail: </strong>" & email & "<br><strong>Assunto:</strong> " & assunto & "<br><br><strong>Mensagem: </strong>" & mensagem & "<br></span><br><br>"


Set objCDOSYSMail = Server.CreateObject("CDO.Message")
    Set objCDOSYSCon = Server.CreateObject ("CDO.Configuration")
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp2.locaweb.com.br"
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 30 
    objCDOSYSCon.Fields.update 
    
    Set objCDOSYSMail.Configuration = objCDOSYSCon
    objCDOSYSMail.From = """SBODigital"" <sbod@sbodigital.org.br>"

	
	objCDOSYSMail.Subject = "SBODigital - Contato"
	objCDOSYSMail.HtmlBody = texto

	email = "sbod@sbodigital.org.br"
	objCDOSYSMail.To = email  
	objCDOSYSMail.Bcc = "contato@solangepaulino.com.br"		
	
	On Error Resume Next
	objCDOSYSMail.Send 
	Set objCDOSYSMail = Nothing 
	Set objCDOSYSCon = Nothing 

	session("msg") = "Enviado"
	response.redirect("contato.asp")

%>