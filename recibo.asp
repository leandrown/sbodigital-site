<!--#include file="func.asp"-->
<%

Session.TimeOut = 40

Token = "45c14da5-bcf9-4472-b336-bd8c77c090e9ba05416d4da781c5e098333e9fc916733138-b983-466e-960f-e1129e5bdce5"

if request.form("transacaoid") <> "" and not isnull(request.form("transacaoid")) then
	
	SQL = "insert into Pagseguro (TransacaoID,CliNome,CliEmail,CliEndereco,CliNumero,CliBairro,CliCidade,CliEstado,CliTelefone,TipoPagamento,StatusTransacao,ProdID_1,ProdDescricao_1,ProdValor_1,ProdID_2,ProdDescricao_2,ProdValor_2,DataTransacao) "
	SQL = SQL & "values ('" & request.form("transacaoid") & "','" & request.form("CliNome") & "','" & request.form("CliEmail") & "','" & request.form("CliEndereco") & "','" & request.form("CliNumero") & "','" & request.form("CliBairro") & "','" & request.form("CliCidade") & "','" & request.form("CliEstado") & "','" & request.form("CliTelefone") & "','" & request.form("TipoPagamento") & "','" & request.form("StatusTransacao") & "','" & request.form("ProdID_1") & "','" & request.form("ProdDescricao_1") & "','" & request.form("ProdValor_1") & "','" & request.form("ProdID_2") & "','" & request.form("ProdDescricao_2") & "','" & request.form("ProdValor_2") & "','" & request.form("DataTransacao") & "') "	
	set cmd = server.CreateObject("ADODB.Command")
	cmd.activeconnection = Bco
	cmd.commandtext = sql
	cmd.execute	
	
end if 'trans'

if request.form("StatusTransacao") = "Aprovado" then

	if isnumeric(cod_socio) then                
		cod_socio = cod_socio*11 = "Update socios set anuidade_atual = 1, data_pagamento_atual = now() where cod_socio = " & cod_socio*1							
		if S1 <> "" then Bco.execute(S1)	
	
	bco.execute("Update pagseguro set marcado = 1, cod_socio = " & cod_socio*1 & " where TransacaoID = '"  & user("TransacaoID") & "')")
	
	end if
end if
'abaixo recibo usuário'

pedido = session("ped_cod")

	do while len(pedido) < 5
		pedido = "0" & pedido
	loop
	



%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="img/logo.ico" rel="icon" type="image/x-icon" />
<title>SBODigital</title>



<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style4 {font-size: 13px}
.style5 {
	color: #1E445B;
	font-weight: bold;
}
.texto {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px}	


-->
</style>
</head>

<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td background="img/fundo.png"><table width="800" border="0" align="center" cellpadding="10" cellspacing="0" bordercolor="#1E445B" class="style4">
      <tr>
        <td height="250" bgcolor="#FFFFFF"><table width="800" border="0" align="center" cellpadding="0" cellspacing="5" bordercolor="#999999" class="texto">
            <tr>
              <td align="center" bgcolor="#FFF" class="borda"><table width="100%" border="0" cellspacing="5" cellpadding="5">
                  <tr>
                    <td align="center"><img src="img/logo.png"></td>
                    </tr>
              </table></td>
            </tr>
            <tr>
              <td valign="middle" class="borda"><span class="style5"><center> <font size="2"><br>
                <br>
                Pagamento realizado com sucesso! Aguarde o retorno do Pagseguro por e-mail.</font></center><br>
                <br>
<%
   Set user = Server.CreateObject("ADODB.Recordset")
user.open "Select Clinome,Cliemail,ProdValor_1,ProdDescricao_1,TipoPagamento,DataTransacao from Pagseguro where prodID_1 = '" & pedido & "' order by id_recibo desc ",Bco

	if not user.eof then
	nome = user("CliNome")
	email = user("CliEmail")
	valor1 = user("ProdValor_1")
	produto1 = user("ProdDescricao_1")	
	pagamento = user("TipoPagamento")
	data_transacao = user("DataTransacao")

   %>
				  
				  <%=nome%><br>
                    <br>
                </span><strong>Seguem os dados do pagamento:</strong><font color="#006699"><strong><br>
                <br>
                <br>
                  </strong></font>
                <table width="100%" border="0" cellpadding="3" cellspacing="0" class="texto">
                  <tr>
                    <td width="24%"><strong>Pagamento:</strong></td>
                    <td width="76%"><%=pagamento%></td>
                  </tr>
                  <tr>
                    <td><strong>Descrição:</strong></td>
                    <td><%=produto1%></td>
                  </tr>
                  <tr>
                    <td><strong>Valor:</strong></td>
                    <td><%=formatnumber(valor1,2)%></td>
                  </tr>                
                  <tr>
                    <td><strong>Data:</strong></td>
                    <td><%=data_func(data_transacao)%></td>
                  </tr>
              </table>
<%
   
   	end if
user.close
%>
				  </td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>