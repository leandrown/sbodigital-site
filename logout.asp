<!--#include file="func.asp"-->    
<%

if session("cod") <> "" and not isnull(session("cod")) then
	Bco.execute("insert into log_login (cod_socio,data,acao,ip) values("&session("cod")&",'" & data_sql_hora(now()) & "','logout','" & Request.ServerVariables("REMOTE_ADDR") & "')")
end if
session("cod") = ""


if url = "" then url = "index.asp"
response.redirect(url)

%>