<%

' -------------------- FORÇAR HTTPS ------------------------------'
Dim strProtocol
Dim strDomain
Dim strPath
Dim strQueryString
Dim strFullUrl

If lcase(Request.ServerVariables("HTTPS")) = "on" Then 
    strProtocol = "https" 
Else
    strProtocol = "http" 
End If

strDomain= Request.ServerVariables("SERVER_NAME")
strPath= Request.ServerVariables("SCRIPT_NAME") 
strQueryString= Request.ServerVariables("QUERY_STRING")

strFullUrl = strProtocol & "://" & strDomain & strPath

If Len(strQueryString) > 0 Then
   strFullUrl = strFullUrl & "?" & strQueryString
End If

FullURL = strFullUrl

if instr(FullURl,"http://") <> 0 then
	FullURL = replace(FullURL,"http://","https://")
	response.redirect(FUllURL)
end if

'----------------------------- BANCO ----------------------------------------'

Set Bco = server.createobject("ADODB.Connection")
Bco.Open("DRIVER={MySQL ODBC 5.3 ANSI Driver};SERVER=187.45.196.193;PORT=3306;DATABASE=sbodigital;USER=sbodigital;PASSWORD=Sbod@0021;OPTION=3;")


'---------------------------- SQL INJECTION -----------------' 
function PQ(var)
	txt = Replace(var,"'","''")
	txt = Replace(txt,"--","")
	txt = Replace(txt,"//","")
	'if inStr(UCASE(txt),"DECLARE") <> 0 then response.redirect("erro.asp")	
	if inStr(UCASE(txt),"SELECT") <> 0 then response.redirect("erro.asp")
	if inStr(UCASE(txt),"INSERT") <> 0 then response.redirect("erro.asp")
	if inStr(UCASE(txt),"UPDATE") <> 0 then response.redirect("erro.asp")
	if inStr(UCASE(txt),"DELETE") <> 0 then response.redirect("erro.asp")
	'if inStr(UCASE(txt),"DROP") <> 0 then response.redirect("erro.asp")
	if inStr(UCASE(txt),"IFRAME") <> 0 then response.redirect("erro.asp")
	'if inStr(UCASE(txt),"EXEC(") <> 0 then response.redirect("erro.asp")
	'if inStr(UCASE(txt),"SCRIPT") <> 0 then response.redirect("erro.asp")
	if inStr(UCASE(txt),"TRUNCATE") <> 0 then response.redirect("erro.asp")		
	PQ = txt
end function


function valida_check(var)
	' ano - mes - dia
	if var = "" or isnull(var) then 
		valida_check = 0
	else
		valida_check = 1
	end if
end function

'formata data
function data_func(var)
	if var <> "" and not isnull(var) then
		mes = month(var)
		dia = day(var)
		if len(mes) = 1 then mes = "0" & mes
		if len(dia) = 1 then dia = "0" & dia
		data_func = dia & "/" & mes & "/" & year(var)
	end if
end function



' data insere sql
function data_sql(var)
	' ano - mes - dia
	if var <> "" and not isnull(var) then	
		mes = month(var)
		dia = day(var)
		ano = year(var)
		if len(mes) = 1 then mes = "0" & mes
		if len(dia) = 1 then dia = "0" & dia	
		data_sql = ano & "-" & mes & "-" & dia
	end if
end function

function data_sql_hora(var)
	' ano - mes - dia
	if var <> "" and not isnull(var) then	
		mes = month(var)
		dia = day(var)
		ano = year(var)
		hora = hour(var)
		minuto = minute(var)
		segundos = second(var)
		
		if len(mes) = 1 then mes = "0" & mes
		if len(dia) = 1 then dia = "0" & dia
		if len(hora) = 1 then hora = "0" & hora
		if len(minuto) = 1 then minuto = "0" & minuto
		if len(segundos) = 1 then segundos = "0" & segundos			
		
		data_sql_hora = ano & "-" & mes & "-" & dia & " " & hora & ":" & minuto & ":" & segundos
		
		'HH:MM:SS
	end if
end function


function data_hora(var)
	' ano - mes - dia
	if var <> "" and not isnull(var) then	
		mes = month(var)
		dia = day(var)
		ano = year(var)
		hora = hour(var)
		minuto = minute(var)
		if len(mes) = 1 then mes = "0" & mes
		if len(dia) = 1 then dia = "0" & dia
		if len(hora) = 1 then hora = "0" & hora	
		if len(minuto) = 1 then minuto = "0" & minuto			
		data_hora = dia & "/" & mes & "/" & year(var) & "  " & hora & ":" & minuto
	end if
end function

' aspas simples
Function TrocaAspas(expressao)
if expressao <> "" and not isnull(expressao) then TrocaAspas = Replace(expressao,"'", "''")
End function

'descreve mes
function mostra_mes(mes)
Select Case mes
	Case "1" mostra_mes = "Janeiro"
	Case "2" mostra_mes = "Fevereiro"
	Case "3" mostra_mes = "Março"
	Case "4" mostra_mes = "Abril"
	Case "5" mostra_mes = "Maio"
	Case "6" mostra_mes = "Junho"
	Case "7" mostra_mes = "Julho"
	Case "8" mostra_mes = "Agosto"
	Case "9" mostra_mes = "Setembro"
	Case "10" mostra_mes = "Outubro"
	Case "11" mostra_mes = "Novembro"
	Case "12" mostra_mes = "Dezembro"
End Select

end function


' ------------- ( GERA CHAVE CONFIRMACAO ) ------------------

function GeraChave(valores)
dim validos
validos = "0123456789abcdefghijklmnopqrstuvwxyz"

Randomize
for i = 1 to valores
	num = mid(validos, Int(35 * Rnd) + 1, 1)
	chave = chave + num
next
GeraChave = chave
end function

%>
