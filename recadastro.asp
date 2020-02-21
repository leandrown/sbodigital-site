<!--#include file="func.asp"-->
<%
   
'session("cod")    = 31

if session("cod") = "" or isnull(session("cod")) then 
   session("erro") = "expired"
   response.redirect("login.asp")
end if
   
Set rs = Server.CreateObject("ADODB.Recordset")
rs.Open "SELECT * FROM socios where cod_socio = " & session("cod"), Bco

if rs.eof then
   	session("erro") = "ne"
	response.redirect("login.asp")
else
   
%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<link href="sbod.ico" rel="icon" type="image/x-icon" />	
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">

   <title>SBODigital - Admissão de Novo Sócio</title>
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
          <h1>
          		Edição de Cadastro</h1></div>
 	</div>
<form name="cadastros" id="cadastro" method="post" action="socio_update.asp" data-toggle="validator" >
	<p>&nbsp;</p>
  <div class="row">
    <div class="col-md-12 col-sm-12">

	  <h3>Dados Pessoais</h3><br>

				
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputNome">Nome completo *</label>
      <input type="text" class="form-control" id="nome" name="nome" value="<%=rs("nome")%>" required>
    </div>

	
	
	<div class="form-group col-md-12">
      <label for="inputEmail">Email *</label>
      <input type="email" class="form-control" id="email" name="email" value="<%=rs("email")%>" required>
    </div>
	
</div>
	
	<div class="form-row">
  	
	
	
	<div class="form-group col-md-4">
      <label for="inputRG">RG</label>
      <input type="text" class="form-control" id="rg" name="rg" placeholder="" value="<%=rs("rg")%>">
    </div>
  	
	<div class="form-group col-md-4">
      <label for="inputCPF">CPF</label>
      <br><%=rs("cpf")%>
    </div>
	
	<div class="form-group col-md-4">
      <label for="inputCRO">CRO</label>
      <input type="text" class="form-control" id="CRO" name="CRO" placeholder="" value="<%=rs("CRO")%>">
    </div>
  	
</div>
	
<div class="form-row">
  	
	<div class="form-group col-md-4">
      <label for="inputsexo">Sexo *</label>
      <select id="sexo" name="sexo" class="form-control">
        <option <% if rs("sexo") = "M" then response.write "selected" %> value="M">Masculino</option>
        <option <% if rs("sexo") = "F" then response.write "selected" %> value="F">Feminino</option>
	  </select>      
    </div>
  	
	<div class="form-group col-md-6">
      <label for="inputNasc">Data de Nascimento</label>
      <br><%=data_func(rs("data_nasc"))%>
    </div>	
	
</div>
	
<div class="form-row">
  		
	
	<div class="form-group col-md-4">
      <label for="inputNasc">Nacionalidade</label>
      <input type="text" class="form-control" id="nacionalidade" name="nacionalidade" placeholder="" value="<%=rs("nacionalidade")%>">
    </div>
	
	<div class="form-group col-md-4">
      <label for="inputCivil">Estado Civil</label>
      <select id="estado_civil" name="estado_civil" class="form-control">
		<option <% if rs("estado_civil") = "" then response.write "selected" %>>Selecione</option>
		<option <% if rs("estado_civil") = "Solteiro" then response.write "selected" %> value="Solteiro">Solteiro</option>
		<option <% if rs("estado_civil") = "Casado" then response.write "selected" %> value="Casado">Casado</option>
		<option <% if rs("estado_civil") = "Separado" then response.write "selected" %> value="Separado">Separado</option>
		<option <% if rs("estado_civil") = "Divorciado" then response.write "selected" %> value="Divorciado">Divorciado</option>					
		<option <% if rs("estado_civil") = "Viúvo" then response.write "selected" %> value="Viúvo">Viúvo</option>
	  </select>      
    </div>
  
  </div>
	
	<div class="form-row">
  	
  	
	<div class="form-group col-md-4">
      <label for="inputTel">Telefone</label>
      <input type="tel" class="form-control" id="telefone" name="telefone" placeholder="(dd) 0000-0000" value="<%=rs("telefone")%>">
	</div>
  	
	<div class="form-group col-md-4">
      <label for="inputCel">Celular *</label>
	  <input type="tel" class="form-control" id="celular" name="celular" placeholder="(dd) 00000-0000" required value="<%=rs("celular")%>">
    </div>
	
</div>


<h2>Endereço Completo</h2><br>

				
<div class="form-row">

	<div class="form-group col-md-4">
      <label for="inputCEP">CEP *</label>
      <input type="text" class="form-control" id="cep" name="cep" placeholder="" required value="<%=rs("cep")%>">
    </div>

	<div class="form-group col-md-12">
      <label for="inputEnD">Endereço Completo *</label>
      <input type="text" class="form-control" id="endereco" name="endereco" placeholder="Rua, Nº, Complemento" required value="<%=rs("endereco")%>">
    </div>

	<div class="form-group col-md-6">
      <label for="inputBairro">Bairro *</label>
      <input type="text" class="form-control" id="bairro" name="bairro" placeholder="" required value="<%=rs("bairro")%>">
    </div>
	
	<div class="form-group col-md-6">
      <label for="inputCidade">Cidade *</label>
      <input type="text" class="form-control" id="cidade" name="cidade" placeholder="" required value="<%=rs("cidade")%>">
    </div>	


	<div class="form-group col-md-6">
      <label for="inputUF">Estado *</label>
      <select id="estado" name="uf" name="uf" class="qt form-control" required>
		  <% Set rsUF = Server.CreateObject("ADODB.Recordset")
			 rsUF.Open "SELECT uf FROM UF order by uf", Bco

			if not rsUF.eof then 
			 while not rsUF.eof
			 %>
  		  <option value='<%=rsUF("uf")%>' <% if rs("uf") = rsUF("uf") then response.write "selected" %>><%=rsUF("uf")%></option>
			<% 
			   rsUF.movenext
			   wend
			   
			   end if
			   rsUF.close
			%>
			  </select>
    </div>
	<div class="form-group col-md-6">
      <label for="inputPais">País</label>
      <input type="text" class="form-control" id="pais" name="pais" placeholder="" value="<%=rs("pais")%>">
    </div>

</div>

<h2>Instituição</h2><br>

				
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputInst">Instituição *</label>
      <input type="text" class="form-control" id="instituicao" name="instituicao" placeholder="" required value="<%=rs("instituicao")%>">
    </div>

    <div class="form-group col-md-12">
      <label for="inputDepto">Departamento</label>
      <input type="text" class="form-control" id="depto" name="depto" placeholder="" value="<%=rs("depto")%>">
    </div>

    <div class="form-group col-md-12">
      <label for="inputDisc">Disciplina</label>
      <input type="text" class="form-control" id="disciplina" name="disciplina" placeholder="" value="<%=rs("disciplina")%>">
    </div>

    <div class="form-group col-md-12">
      <label for="inputTelDepto">Telefone do Departamento</label>
      <input type="text" class="form-control" id="tel_depto" name="tel_depto" placeholder="" value="<%=rs("tel_depto")%>">
    </div>

</div>
	

<br>             
<div class="col-md-12">
   <div class="form-group text-center">
	  <br><br><input type="submit" value="Enviar">
   </div>
</div>

     </div>


</div>

<script>
 $(function() {
   			$('.date').mask('00/00/0000');
    		$('.time').mask('00:00:00');
    		$('.date_time').mask('00/00/0000 00:00:00');
		    $('.cep').mask('00000-000');
		    $('.phone').mask('0000-0000');
		    $('.cpf').mask('000.000.000-00', {reverse: true});
		    $('.phone_with_ddd').mask('(00) 0000-0000');
		    $('.cel').mask('(00) 00000-0000');
		    $('.fallback').mask("00r00r0000", {
		      translation: {
		        'r': {
		          pattern: /[\/]/,
		          fallback: '/'
		        },
		        placeholder: "__/__/____"
		      }
		    });

		     $('.selectonfocus').mask("00/00/0000", {selectOnFocus: true});

		    $('.cep_with_callback').mask('00000-000', {onComplete: function(cep) {
		        console.log('Mask is done!:', cep);
		      },
		       onKeyPress: function(cep, event, currentField, options){
		        console.log('An key was pressed!:', cep, ' event: ', event, 'currentField: ', currentField.attr('class'), ' options: ', options);
		      },
		      onInvalid: function(val, e, field, invalid, options){
		        var error = invalid[0];
		        console.log ("Digit: ", error.v, " is invalid for the position: ", error.p, ". We expect something like: ", error.e);
		      }
		    });

		    $('.crazy_cep').mask('00000-000', {onKeyPress: function(cep, e, field, options){
		      var masks = ['00000-000', '0-00-00-00'];
		        mask = (cep.length>7) ? masks[1] : masks[0];
		      $('.crazy_cep').mask(mask, options);
		    }});


		    var SPMaskBehavior = function (val) {
		      return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
		    },
		    spOptions = {
		      onKeyPress: function(val, e, field, options) {
		          field.mask(SPMaskBehavior.apply({}, arguments), options);
		        }
		    };

		    $('.telefone').mask(SPMaskBehavior, spOptions);

		    $(".bt-mask-it").click(function(){
		      $(".mask-on-div").mask("000.000.000-00");
		      $(".mask-on-div").fadeOut(500).fadeIn(500)
		    })

		    $('pre').each(function(i, e) {hljs.highlightBlock(e)});

});

 $(document).ready(function buscaCEP() {


            function limpa_formulário_cep() {
                // Limpa valores do formulário de cep.
                $("#rua").val("");
                $("#bairro").val("");
                $("#cidade").val("");
                $("#estado").val("");
            }
            
            //Quando o campo cep perde o foco.
            $("#cep").blur(function() {

                //Nova variável "cep" somente com dígitos.
                var cep = $(this).val().replace(/\D/g, '');

                //Verifica se campo cep possui valor informado.
                if (cep != "") {

                    //Expressão regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;

                    //Valida o formato do CEP.
                    if(validacep.test(cep)) {

                        //Preenche os campos com "..." enquanto consulta webservice.
                        $("#rua").val("...")
                        $("#bairro").val("...")
                        $("#cidade").val("...")
                        $("#estado").val("...")

                        //Consulta o webservice viacep.com.br/
                        $.getJSON("//viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                            if (!("erro" in dados)) {
                                //Atualiza os campos com os valores da consulta.
                                $("#rua").val(dados.logradouro);
                                $("#bairro").val(dados.bairro);
                                $("#cidade").val(dados.localidade);
                                $("#estado").val(dados.uf);
                            } //end if.
                            else {
                                //CEP pesquisado não foi encontrado.
                                limpa_formulário_cep();
                                alert("CEP não encontrado.");
                            }
                        });
                    } //end if.
                    else {
                        //cep é inválido.
                        limpa_formulário_cep();
                        alert("Formato de CEP inválido.");
                    }
                } //end if.
                else {
                    //cep sem valor, limpa formulário.
                    limpa_formulário_cep();
                }
            });
        });

	
</script>  

 
</form>


   </section>

   <footer>
      <!--#include file="footer.asp"-->
   </footer>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
   <!-- Bootstrap -->
<script src="js/bootstrap.bundle.min.js"></script>
   <!-- Accessibility Bar -->
<script src="js/jquery-accessibility.min.js"></script>
<script>
      var zoom;

      function setStyle(styleid) {
         var increase_contrast = document.getElementById('increase_contrast');
         var yellow_black = document.getElementById('yellow_black');
         var invert_grayscale = document.getElementById('invert_grayscale');
         var invert_color = document.getElementById('invert_color');
         var grayscale = document.getElementById('grayscale');

         increase_contrast.disabled = true;
         yellow_black.disabled = true;
         invert_grayscale.disabled = true;
         invert_color.disabled = true;
         grayscale.disabled = true;

         if (styleid) {
            var atual = document.getElementById(styleid);
            atual.disabled = false;
         }
      }

      window.onload = setStyle();

      function zoomInit() {
         zoom = parseInt(localStorage.getItem('zoom') || 100);
         document.getElementsByTagName('body')[0].style.zoom = zoom + '%';
      }

      zoomInit();

      function zoomIn() {
         zoom += 20;
         document.getElementsByTagName('body')[0].style.zoom = zoom + '%';
         localStorage.setItem('zoom', zoom);
      }

      function zoomOut() {
         if (zoom > 100) {
            zoom -= 20;
            document.getElementsByTagName('body')[0].style.zoom = zoom + '%';
            localStorage.setItem('zoom', zoom);
         }
      }
   </script>
</body>

</html>
<%
  
   end if
   rs.close
   set rs = nothing
   
   bco.close
   set bco = nothing
%>