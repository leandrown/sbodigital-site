<!--#include file="func.asp"-->
<%

session("cod") = ""

email = PQ(request("email"))
senha = PQ(request("senha"))

Set user = Server.CreateObject("ADODB.Recordset")
user.Open "SELECT * FROM socios where (email = '" & email & "' and senha = '" & senha & "') ", Bco

if user.eof then
   session("erro") = "fail"
	response.redirect("login.asp")
else
	session("cod") = user("cod_socio")
	Bco.execute("insert into log_login (cod_socio,data,acao,ip) values("&session("cod")&",'" & data_sql_hora(now()) & "','login','" & Request.ServerVariables("REMOTE_ADDR") & "')")	
	response.redirect("AreaAssociado.asp")
end if

user.close
set user = nothing
bco.close
set bco = nothing

%>