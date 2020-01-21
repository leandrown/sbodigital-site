<!--#include file="func.asp"-->
<%

session("cod") = ""

email = PQ(request("email"))
cpf = PQ(request("cpf"))

Set user = Server.CreateObject("ADODB.Recordset")
user.Open "SELECT * FROM socios where (email = '" & email & "' or cpf = '" & cpf & "') ", Bco

if not user.eof then
   session("erro") = "erro"
	response.redirect("login.asp")
else
	session("cpf") = cpf
   session("email") = email
	response.redirect("Associacao.asp")
end if

user.close
set user = nothing
bco.close
set bco = nothing

%>