<!--#include file="func.asp"-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%

if session("cod") = "" or isnull(session("cod")) then 
   session("erro") = "expired"
   response.redirect("login.asp")
end if

'-------------------------- UPDATE BASE -------------------'   
SQLUpdate = "Update socios set "   
SQLUpdate = SQLUpdate & " nome = '" & PQ(request("nome")) & "' ,"
SQLUpdate = SQLUpdate & " email = '" & PQ(request("email")) & "' ,"
SQLUpdate = SQLUpdate & " rg = '" & PQ(request("rg")) & "' ,"
SQLUpdate = SQLUpdate & " cro = '" & PQ(request("cro")) & "' ,"
SQLUpdate = SQLUpdate & " sexo = '" & PQ(request("sexo")) & "' ,"
SQLUpdate = SQLUpdate & " nacionalidade = '" & PQ(request("nacionalidade")) & "' ,"
SQLUpdate = SQLUpdate & " estado_civil = '" & PQ(request("estado_civil")) & "' ,"
SQLUpdate = SQLUpdate & " telefone = '" & PQ(request("telefone")) & "' ,"
SQLUpdate = SQLUpdate & " celular = '" & PQ(request("celular")) & "' ,"
SQLUpdate = SQLUpdate & " cep = '" & PQ(request("cep")) & "' ,"
SQLUpdate = SQLUpdate & " endereco = '" & PQ(request("endereco")) & "' ,"
SQLUpdate = SQLUpdate & " bairro = '" & PQ(request("bairro")) & "' ,"
SQLUpdate = SQLUpdate & " cidade = '" & PQ(request("cidade")) & "' ,"
SQLUpdate = SQLUpdate & " uf = '" & PQ(request("uf")) & "' ,"
SQLUpdate = SQLUpdate & " instituicao = '" & PQ(request("instituicao")) & "' ,"
SQLUpdate = SQLUpdate & " depto = '" & PQ(request("depto")) & "' ,"
SQLUpdate = SQLUpdate & " disciplina = '" & PQ(request("disciplina")) & "' ,"
SQLUpdate = SQLUpdate & " tel_depto = '" & PQ(request("tel_depto")) & "', data_recad = now() "
SQLUpdate = SQLUpdate & " WHERE cod_socio = " & session("cod")

   'Response.write SQLUpdate
   Bco.execute(SQLUpdate)

   response.redirect("AreaAssociado.asp")
%>