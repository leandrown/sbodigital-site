<!--#include file="func.asp"-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%

   
email = PQ(request("email"))
cpf = PQ(request("cpf"))

' ----------- (VALIDA SE EXISTE ) ---------------'
Set user = Server.CreateObject("ADODB.Recordset")
user.Open "SELECT * FROM socios where (email = '" & email & "' or cpf = '" & cpf & "') ", Bco

if not user.eof then
   session("erro") = "erro"
   response.redirect("login.asp")   
else
   
   
'INSERE PRIMEIROS DADOS
strSQL = "Insert into socios (cpf,email,aceite,data,ip) values('" & PQ(request("cpf")) & "','" & PQ(request("email")) & "',1,now(),'" & Request.ServerVariables("REMOTE_ADDR") & "') "
Bco.execute(strSQL)

'PEGA CODIGO SOCIO
Set Cliente = Server.CreateObject("ADODB.Recordset")
Cliente.Open "SELECT cod_socio FROM socios WHERE cpf = '" & PQ(request("cpf")) & "' order by cod_socio desc", Bco
if not Cliente.eof then
	cod_socio = cliente("cod_socio")
end if 
Cliente.close   
   
   
nome = PQ(request("nome"))
nome = replace(nome,"'","''")
data_nasc = PQ(request("data_nasc"))
if not isdate(data_nasc) then
data_nasc = ""
else
data_nasc = data_sql(data_nasc)
end if

if cod_socio <> "" and not isnull(cod_socio) then
   
SQLUpdate = "Update socios set "   
SQLUpdate = SQLUpdate & " nome = '" & nome & "' ,"
SQLUpdate = SQLUpdate & " rg = '" & PQ(request("rg")) & "' ,"
SQLUpdate = SQLUpdate & " cro = '" & PQ(request("cro")) & "' ,"
SQLUpdate = SQLUpdate & " sexo = '" & PQ(request("sexo")) & "' ,"
SQLUpdate = SQLUpdate & " data_nasc = '" & PQ(request("data_nasc")) & "' ,"
SQLUpdate = SQLUpdate & " nacionalidade = '" & PQ(request("nacionalidade")) & "' ,"
SQLUpdate = SQLUpdate & " estado_civil = '" & PQ(request("estado_civil")) & "' ,"
SQLUpdate = SQLUpdate & " telefone = '" & PQ(request("telefone")) & "' ,"
SQLUpdate = SQLUpdate & " celular = '" & PQ(request("celular")) & "' ,"
SQLUpdate = SQLUpdate & " senha = '" & PQ(request("senha")) & "' ,"
SQLUpdate = SQLUpdate & " cep = '" & PQ(request("cep")) & "' ,"
SQLUpdate = SQLUpdate & " endereco = '" & PQ(request("endereco")) & "' ,"
SQLUpdate = SQLUpdate & " bairro = '" & PQ(request("bairro")) & "' ,"
SQLUpdate = SQLUpdate & " cidade = '" & PQ(request("cidade")) & "' ,"
SQLUpdate = SQLUpdate & " uf = '" & PQ(request("uf")) & "' ,"
SQLUpdate = SQLUpdate & " instituicao = '" & PQ(request("instituicao")) & "' ,"
SQLUpdate = SQLUpdate & " depto = '" & PQ(request("depto")) & "' ,"
SQLUpdate = SQLUpdate & " disciplina = '" & PQ(request("disciplina")) & "' ,"
SQLUpdate = SQLUpdate & " tel_depto = '" & PQ(request("tel_depto")) & "' "
SQLUpdate = SQLUpdate & " WHERE cod_socio = " & cod_socio

   Response.write SQLUpdate
   Bco.execute(SQLUpdate)
   
   session("cod") = cod_socio

nome = PQ(request("nome"))
email = PQ(request("email"))
senha = PQ(request("senha"))

texto = "<style type=text/css> .fonte { font-family: arial; font-size: 12px;} </style>  <img src=https://www.sbodigital.org.br/img/LogoM.png><br><br><span class=fonte>Olá, <b>" & nome & ",</b><br><br>Agradecemos pelo seu cadastro na SBODigital. Agora você pode acessar a área exclusiva de associados! Em breve teremos muitas novidades para nossos associados, fique atento!<br><br>Seus dados de acesso:<br><br><strong>E-mail: </strong>" & email & "<br><strong>Senha de acesso:</strong> " & senha & "<br><br>Para a sua segurança,  guarde seus dados em local seguro.<br><br><br>Atenciosamente,<br><strong>SBODigital</strong></span><br><br>"


Set objCDOSYSMail = Server.CreateObject("CDO.Message")
    Set objCDOSYSCon = Server.CreateObject ("CDO.Configuration")
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp2.locaweb.com.br"
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
    objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 30 
    objCDOSYSCon.Fields.update 
    
    Set objCDOSYSMail.Configuration = objCDOSYSCon
    objCDOSYSMail.From = """SBODigital"" <sbod@sbodigital.org.br>"

	
	objCDOSYSMail.Subject = "Cadastro SBODigital"
	objCDOSYSMail.HtmlBody = texto

	'email = "contato@solangepaulino.com.br"
	'email = user("email")
	objCDOSYSMail.To = email  
	objCDOSYSMail.Bcc = "contato@solangepaulino.com.br"		
	
	On Error Resume Next
	objCDOSYSMail.Send 
	Set objCDOSYSMail = Nothing 
	Set objCDOSYSCon = Nothing 

   response.redirect("Anuidade.asp?cad=ok")
else
	session("erro") = "erro"
	response.redirect("login.asp")
end if 
		
end if 's existe'
%>