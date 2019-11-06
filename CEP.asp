<!doctype html>
<html lang="pt-br">
<head>
<link href="http://www.estomatologia.com.br/padrao.css?novo" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html" charset="iso-8859-1" />
   

</head>

<body>




    <div id="conteudo">

        <div class="centro">

            <div class="texto s_ext">


    <!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script> 





<title>Atualiza - Sociedade Brasileira de Estomatologia e Patologia Oral</title>

   <div class="titulo">
        <div class="mapa">s&oacute;cios >> 
          Associe</div>
        <div class="chamada">
          <h1>
          		Ficha  de Inscri&ccedil;&atilde;o para novos s&oacute;cios:
          </h1></div>
 	</div>
<form name="cadastros" id="cadastro" method="post" action="update" onSubmit="return validar();">
	<p>
		
			Preencha os campos abaixo, seguindo as instru&ccedil;&otilde;es ao lado em vermelho. Procure n&atilde;o deixar campos em branco.
			
	</p>
     


<div class="row">
	<div class="col-md-12 col-sm-12">

		<h2>Dados Pessoais</h2><br>

				
  
			<div class="col-md-12">
				<label><strong>Nome</strong></label><br>
				<input id="nome" type="text" name="nome" size="50" value="" class="form-control" required>
			 </div>	


		    <div class="col-md-12">
					<label><strong>Email</strong></label>&nbsp;<label style="color:#F00" class="f10">* apenas 1 e-mail</label> <br>
					<input id="email" type="email" name="email" size="50" value="" class="form-control" required>
			</div>


			<div class="col-md-4">
				<label><strong>RG</strong></label><br>
			    <input id="rg" type="text" name="rg" size="50" value="" maxlength="12"  class="form-control"> 
			</div>

			<div class="col-md-4">
				<label><strong>CPF (or passport number)</strong></label><br>
				<input id="cpf" type="text" name="cpf" class="cpf form-control" size="50" value="" required  >	
			</div>

			<div class="col-md-4">
				<label><strong>Data de Nasc.</strong></label><br>
				<input id="data_nasc" type="text" class="date form-control" name="data_nasc" size="50" value="" maxlength="12"  required>
			</div>


			<div class="col-md-4">
				<label><strong>Sexo</strong></label><br>
				<select  class="form-control input-box" name="sexo" id="sexo" required>
              		<option value="M">Masculino</option>
              		<option value="F">Feminino</option>
            	</select>
			</div>


			<div class="col-md-4">
				<label><strong>Naturalidade</strong></label><br>
				<input id="naturalidade" type="text" name="natur" size="50" value="" class="form-control" required>
			</div>


			<div class="col-md-4">
				<label><strong>Site Pessoal</strong></label><br>
				<input type="text" name="sitep" size="50" value="" class="form-control">	
			</div>


			<div class="col-md-12">
				
				<div class="row">
					<div class="col-md-6">
						<label><strong>Digite uma Senha</strong></label>
						<input id="senha" type="password" name="senha" size="50" maxlength="6" class="form-control" required>
					</div>
					<div class="col-md-6">
						<label><strong>Confirme sua senha </strong></label>
						<input id="senha2" type="password" name="senha2" size="50" maxlength="6" class="form-control" >&nbsp;<span id="ok"></span>
					</div>
				</div>
				
			</div>
	</div> 



	<div class="col-md-6">		
	<h2>Endere&ccedil;o (Residencial)</h2><br>

			<div class="col-md-8">
				<label><strong>Cep</strong></label><br>
              	<input id="cep" type="text" class="td cep form-control" name="cep1"   size="50" value="" required >
			</div>

			<div class="col-md-4">
			  <label><strong>Estado:</strong></label><br>
			  <select id="estado" name="uf1" class="qt form-control" required>
				<option value=''selected>--</option><option value='AC'>AC</option><option value='AL'>AL</option><option value='AM'>AM</option><option value='AP'>AP</option><option value='BA'>BA</option><option value='CE'>CE</option><option value='DF'>DF</option><option value='ES'>ES</option><option value='GO'>GO</option><option value='MA'>MA</option><option value='MG'>MG</option><option value='MS'>MS</option><option value='MT'>MT</option><option value='PA'>PA</option><option value='PB'>PB</option><option value='PE'>PE</option><option value='PI'>PI</option><option value='PR'>PR</option><option value='RJ'>RJ</option><option value='RN'>RN</option><option value='RO'>RO</option><option value='RR'>RR</option><option value='RS'>RS</option><option value='SC'>SC</option><option value='SE'>SE</option><option value='SP'>SP</option><option value='TO'>TO</option>
			  </select>
			</div>
			<div class="col-md-12">
				<label><strong>Endere&ccedil;o Completo: </strong></label><br>
			  	<input id="rua" type="text" class="td form-control" name="endereco1" size="50" value="" required>
			</div>

			<div class="col-md-6">
				<label><strong>Bairro</strong></label><br>
			  <input type="text" id="bairro" class="td form-control" name="bairro1" size="50" value="" required>
			</div>

			<div class="col-md-6">
				<label><strong>Cidade:</strong></label><br>
			  	<input id="cidade" type="text" class="td form-control" name="cidade1" size="50" value="" required>
			</div>


			<div class="col-md-6">
				<label><strong>Fone</strong></label><br>
			  	<input id="fone1" type="text" class="td phone_with_ddd form-control" name="fone1"  size="18" value="">
			</div>

			<div class="col-md-6">				
			  <label><strong>Celular</strong></label><br>
			  <input id="celular" name="celular" type="text" class="td cel form-control"  value="" size="18">
			</div>

			<div class="col-md-6">
				<label><strong>Skype</strong></label><br>
			  	<input name="skype" type="text" class="td form-control" id="skype" value="" size="25" maxlength="50">
			</div>
			<div class="col-md-6">
				<label><strong>País</strong></label><br>
			  	<input name="pais" type="text" class="td form-control" id="pais" value="" size="25" maxlength="50" >
			</div>
		</div>


	<div class="col-md-6">

		<h2>Endere&ccedil;o: (comercial/acad&ecirc;mico) <br></h2><br>
                  
			<div class="col-md-8">
				<strong>Cep</strong>
                <input id="cep2" type="text" class="td cep form-control" name="cep2"   size="30" value="" required>
			</div>

			<div class="col-md-4">
				<strong>Estado</strong>
			  	<select id="estado2" name="uf2" class="qt form-control" required>
				<option value=''selected>--</option><option value='AC'>AC</option><option value='AL'>AL</option><option value='AM'>AM</option><option value='AP'>AP</option><option value='BA'>BA</option><option value='CE'>CE</option><option value='DF'>DF</option><option value='ES'>ES</option><option value='GO'>GO</option><option value='MA'>MA</option><option value='MG'>MG</option><option value='MS'>MS</option><option value='MT'>MT</option><option value='PA'>PA</option><option value='PB'>PB</option><option value='PE'>PE</option><option value='PI'>PI</option><option value='PR'>PR</option><option value='RJ'>RJ</option><option value='RN'>RN</option><option value='RO'>RO</option><option value='RR'>RR</option><option value='RS'>RS</option><option value='SC'>SC</option><option value='SE'>SE</option><option value='SP'>SP</option><option value='TO'>TO</option>
			  </select>
			</div>


			<div class="col-md-12">
				<strong>Endere&ccedil;o Completo</strong>
			  	<input id="rua2" type="text" class="td form-control" name="endereco2" size="50" value="" required>
			</div>


			<div class="col-md-6">
				<strong>Bairro</strong>
			    <input type="text" id="bairro2" class="td form-control" name="bairro2" size="50" value="" required>
			</div>


			<div class="col-md-6">
				<strong>Cidade</strong>
			 	<input type="text" id="cidade2" class="td form-control" name="cidade2" size="50" value="" required>
			</div>



			<div class="col-md-12">
				<label><strong>Fone</strong></label>
			    <input  id="fone2" type="text" class="td phone_with_ddd form-control" name="fone2"  size="18" value="" required>
			</div>

			<div class="col-md-12">
				<label><strong>Endere&ccedil;o para correspond&ecirc;ncia</strong></label><br>
				<select  class="form-control input-box" name="corresp" id="corresp" required>
              		<option value="1" >Residencial</option>
              		<option value="2" >Comercial</option>
            	</select>
			</div>

	</div> <!-- fim da 3° coluna -->
</div>
        

<div class="row">
	<div class="col-md-12">
		<h2><br>Dados Profissionais e de Gradua&ccedil;&atilde;o </h2><br>


		<div class="col-md-4">
				<label><strong>Faculdade de Gradua&ccedil;&atilde;o</strong></label><br>
				<input id="inst1" name="inst1" type="text" value="" size="25" maxlength="50" class="form-control">
		</div>

		<div class="col-md-2">
				<label><strong>Conclus&atilde;o</strong></label><br>
				<input name="ano1" type="text" id="ano1" value="" size="5" maxlength="5" class="form-control">
		</div>

		<div class="col-md-4">
			<label><strong>Institui&ccedil;&atilde;o da Especializa&ccedil;&atilde;o&nbsp;</strong></label><br>
			<input name="inst2" type="text" id="inst2" value="" size="25" maxlength="50" class="form-control">
		</div>

		<div class="col-md-2">
				<label><strong>Conclus&atilde;o</strong></label><br>
				<input name="ano2" type="text" id="ano2" value="" size="5" maxlength="5" class="form-control">
		</div>

		<div class="col-md-4">
			<label><strong>Institui&ccedil;&atilde;o do Mestrado</strong></label><br>
			<input name="inst3" type="text" id="inst3" value="" size="25" maxlength="50" class="form-control">
		</div>

		<div class="col-md-2">
			<label><strong>Conclus&atilde;o</strong></label>
			<input name="ano3" type="text" id="ano3" value="" size="5" maxlength="5" class="form-control">
		</div>

		<div class="col-md-4">
			<label><strong>Institui&ccedil;&atilde;o do Doutorado</strong></label> 
			<input name="inst4" type="text" id="inst4" value="" size="25" maxlength="50" class="form-control">
				
		</div>

		<div class="col-md-2">
			<label><strong>Conclus&atilde;o</strong></label>
			<input name="ano4" type="text" id="ano4" value="" size="5" maxlength="5" class="form-control">	
		</div>

		<div class="col-md-4">
			<label><strong>Institui&ccedil;&atilde;o do P&oacute;s Doutorado</strong></label>
			<input name="inst5" type="text" id="inst5" value="" size="25" maxlength="50" class="form-control">				
		</div>

		<div class="col-md-2">
			<label><strong>Conclus&atilde;o</strong></label>
			<input name="ano5" type="text" id="ano5" value="" size="5" maxlength="5" class="form-control">
		</div>

		<div class="col-md-6">
			<label><strong>Atividades profissionais atuais</strong></label> 
			<input name="atividades" type="text" id="atividades" value="" size="50" maxlength="150" class="form-control">
		</div>

		<div class="col-md-4">
			<!--<label><strong>&Aacute;rea de forma&ccedil;&atilde;o</strong></label><br>
           	<input type="checkbox" name="formacaoPro" value="Odontologia"
           		  /> Odontologia
           	<input type="checkbox" name="formacaoPro2"
           		 /> Outros: 
            <input type="text"  name="formacaoPro3" value="" /> -->

            <label><strong>&Aacute;rea de forma&ccedil;&atilde;o</strong></label><br>
			<select class="form-control input-box" name="formacaoPro" id="fpro" required >
				<option> Odontologia</option>
				<option> Outros</option>
			</select>

		</div>
		<br>             
             <input type="hidden" name="cod" value="">
             <input type="hidden" name="nsocio" value="" />
             <input type="hidden" name="pag" value="" />

		<div class="col-md-12" align="center">
			<br><button id="enviaForm" type="submit" class="botao" name="Submit">
				
					Enviar
				
			</button>
		</div>

	</div>

</div>

</form>


<script>
 $(function() {
   			$('.date').mask('00/00/0000');
    		$('.time').mask('00:00:00');
    		$('.date_time').mask('00/00/0000 00:00:00');
		    $('.cep').mask('00000-000');
		    $('.phone').mask('0000-0000');
		    //$('.cpf').mask('000.000.000-00', {reverse: true});
		    $('.phone_with_ddd').mask('(00) 0000-0000');
		    $('.cel').mask('(00) 00000-0000');
		    $('.phone_us').mask('(000) 000-0000');
		    $('.mixed').mask('AAA 000-S0S');
		    $('.ip_address').mask('099.099.099.099');
		    $('.percent').mask('##0,00%', {reverse: true});
		    $('.clear-if-not-match').mask("00/00/0000", {clearIfNotMatch: true});
		    $('.placeholder').mask("00/00/0000", {placeholder: "__/__/____"});
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

		    $('.cnpj').mask('00.000.000/0000-00', {reverse: true});
		 //   $('.cpf').mask('000.000.000-00', {reverse: true});
		    $('.money').mask('#.##0,00', {reverse: true});

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

  $(document).ready(function buscaEndComer() {


            function limpa_formulário_cep() {
                // Limpa valores do formulário de cep.
                $("#rua2").val("");
                $("#bairro2").val("");
                $("#cidade2").val("");
                $("#estado2").val("");
            }
            
            //Quando o campo cep perde o foco.
            $("#cep2").blur(function() {

                //Nova variável "cep" somente com dígitos.
                var cep = $(this).val().replace(/\D/g, '');

                //Verifica se campo cep possui valor informado.
                if (cep != "") {

                    //Expressão regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;

                    //Valida o formato do CEP.
                    if(validacep.test(cep)) {

                        //Preenche os campos com "..." enquanto consulta webservice.
                        $("#rua2").val("...")
                        $("#bairro2").val("...")
                        $("#cidade2").val("...")
                        $("#estado2").val("...")

                        //Consulta o webservice viacep.com.br/
                        $.getJSON("//viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                            if (!("erro" in dados)) {
                                //Atualiza os campos com os valores da consulta.
                                $("#rua2").val(dados.logradouro);
                                $("#bairro2").val(dados.bairro);
                                $("#cidade2").val(dados.localidade);
                                $("#estado2").val(dados.uf);
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

</body>
</html>