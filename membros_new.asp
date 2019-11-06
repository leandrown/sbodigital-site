<!DOCTYPE html>
<html lang="pt-br">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">

   <title>Ficha de Associação Individual - SBO Digital</title>
	<link href="css/padrao.css?novo" rel="stylesheet" type="text/css">
	
   <link rel="stylesheet" media="screen" href="css/sbod-theme.css">
   <!-- Bootstrap -->
   <link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
   <!-- Accessibility Bar Styles -->
   <link rel="stylesheet" media="screen" href="css/accessibility/accessibility.css">
   <link rel="stylesheet" media="screen" href="css/accessibility/grayscale.css" id="grayscale" disabled>
   <link rel="stylesheet" media="screen" href="css/accessibility/increase-contrast.css" id="increase_contrast" disabled>
   <link rel="stylesheet" media="screen" href="css/accessibility/invert-color.css" id="invert_color" disabled>
   <link rel="stylesheet" media="screen" href="css/accessibility/invert-grayscale.css" id="invert_grayscale" disabled>
   <link rel="stylesheet" media="screen" href="css/accessibility/yellow-n-black.css" id="yellow_black" disabled>

   <!-- Font Awesome -->
   <script src="https://kit.fontawesome.com/af40653a1b.js" crossorigin="anonymous"></script>
</head>

<body>
   <!-- Accessibility Bar -->
   <nav class="accessibility-bar fixed-top" id="topbar" role="menubar" aria-label="Barra de Acessibilidade">
      <div class="container">
         <div class="row">
            <ul class="hidden-xs hidden-sm" aria-label="Navegação pela página">
               <li role="menuitem">
                  <a accesskey="1" href="#page-top" title="Ir para o Topo">
                     <span lang="pt-br">Ir para o topo</span> <span>[1]</span>
                  </a>
               </li>
               <li role="menuitem" class="closeContrast">
                  <a accesskey="2" href="#services" title="Ir para Serviços">
                     <span lang="pt-br">Ir para Serviços</span> <span>[2]</span>
                  </a>
               </li>
               <li role="menuitem" class="closeContrast">
                  <a accesskey="3" href="#contact" title="Ir para o rodapé">
                     <span lang="pt-br">Ir para Contato</span> <span>[3]</span>
                  </a>
               </li>
            </ul>
            <ul aria-label="Controles de acessibilidade do site">
               <li role="menuitem" class="closeContrast">
                  <a href="#" title="Página de acessibilidade">
                     <i class="fas fa-universal-access"></i>
                     <span lang="pt-br">Acessibilidade</span>
                  </a>
               </li>
               <li role="menuitem" class="zoomButtons">
                  <a href="#" title="Ampliar tela" onclick="zoomIn()" class="zoomIn gm5zoom" id="zoomIn">
                     <span lang="pt-br">A+</span>
                  </a>
               </li>
               <li role="menuitem" class="zoomButtons closeContrast">
                  <a href="#" title="Reduzir tela" onclick="zoomOut()" class="zoomOut gm5zoom" id="zoomOut">
                     <span lang="pt-br">A-</span>
                  </a>
               </li>
               <li role="menuitem" class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" title="Contraste" role="button" data-toggle="dropdown" aria-haspopup="true"
                     aria-expanded="false">
                     <i class="fas fa-adjust"></i>
                     <span lang="pt-br">Contraste</span>
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <a class="dropdown-item" title="Preto, branco e amarelo" href="#" onclick="setStyle('yellow_black')">Preto, branco e amarelo</a>
                     <a class="dropdown-item" title="Aumentar contraste" href="#" onclick="setStyle('increase_contrast')">Aumentar contraste</a>
                     <a class="dropdown-item" title="Tons de cinza" href="#" onclick="setStyle('grayscale')">Tons de cinza</a>
                     <a class="dropdown-item" title="Inverter tons de cinza" href="#" onclick="setStyle('invert_grayscale')">Inverter tons de cinza</a>
                     <a class="dropdown-item" title="Inverter cores" href="#" onclick="setStyle('invert_color')">Inverter cores</a>
                     <a class="dropdown-item" title="Cores originais" href="#" onclick="setStyle()">Cores originais</a>
                  </div>
               </li>
               <li role="menuitem">
                  <a href="#" title="Acessar a página de mapa do site" target="_self" title="Mapa do Site">
                     <i class="fas fa-sitemap"></i>
                     <span lang="pt-br">Mapa do site</span>
                  </a>
               </li>
            </ul>
         </div>
      </div>
   </nav> <!-- End Accessibility Bar -->

   <header>
      <!-- Navigation Bar -->
      <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
         <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
               <img src="svg/sbod-main-logo.svg" alt="SBO Digital">
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive"
               aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
               <ul class="navbar-nav ml-auto my-2 my-lg-0">
                  <li class="nav-item">
                     <a class="nav-link js-scroll-trigger" href="/">Home</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link js-scroll-trigger" href="#">Quem Somos</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link js-scroll-trigger" href="#">Notícias</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link js-scroll-trigger" href="membros.html">Membros</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link js-scroll-trigger" href="#">Contato</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link js-scroll-trigger" href="#"><i class="fas fa-user"></i> Entrar</a>
                  </li>
               </ul>
            </div>
         </div>
      </nav> <!-- end navigation -->
   </header>
   <section id="form-area">
    <div id="conteudo">
        <div class="centro">
           <div class="texto s_ext">


    <!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script> 



   <div class="titulo">
        <div class="chamada">
          <h1>
          		Ficha de Associação Individual
          </h1></div>
 	</div>
<form name="cadastros" id="cadastro" method="post" action="update" onSubmit="return validar();">
	<p>
		
			Preencha os campos abaixo. Procure n&atilde;o deixar campos em branco.
			
	</p>
     


<div class="row">
	<div class="col-md-12 col-sm-12">

		<h2>Dados Pessoais</h2><br>

				
  
			<div class="col-md-12">
				<label><strong>Nome</strong></label><br>
				<input id="nome" type="text" name="nome" size="50" value="" class="form-control" required>
			 </div>	


		    <div class="col-md-12">
					<label><strong>Email</strong></label> <br>
					<input id="email" type="email" name="email" size="50" value="" class="form-control" required>
			</div>


			<div class="col-md-4">
				<label><strong>RG</strong></label><br>
			    <input id="rg" type="text" name="rg" size="50" value="" maxlength="12"  class="form-control"> 
			</div>

			<div class="col-md-4">
				<label><strong>CPF</strong></label><br>
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
				<label><strong>Nacionalidade</strong></label>
				<br>
				<input id="naturalidade" type="text" name="natur" size="50" value="" class="form-control" required>
			</div>


			<div class="col-md-4">
				<label><strong>CRO</strong></label>
				<br>
				<input type="text" name="cro" size="50" value="" class="form-control">	
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



	<div class="col-md-12">		
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

			<div class="col-md-12">
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

            <label><strong>&Aacute;rea de forma&ccedil;&atilde;o</strong></label><br>
			<select class="form-control input-box" name="formacaoPro" id="fpro" required >
				<option> Odontologia</option>
				<option> Outros</option>
			</select>

		</div>
		<br>             

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
   </section>

   <footer>
      <div class="container">
         <div class="row">
            <div class="col">
               <a href="/"><img src="svg/sbod-footer-logo.svg" alt="SBO Digital"></a>
            </div>
            <address class="col">
               <h6>Lorem ipsum dolor sit.</h6>
               <ul>
                  <li>Lorem ipsum dolor sit.</li>
                  <li>Lorem ipsum dolor sit.</li>
                  <li>Lorem ipsum dolor sit.</li>
               </ul>
            </address>
            <address class="col">
               <h6>Lorem ipsum dolor sit.</h6>
               <ul>
                  <li>Lorem ipsum dolor sit.</li>
                  <li>Lorem ipsum dolor sit.</li>
                  <li>Lorem ipsum dolor sit.</li>
               </ul>
            </address>
            <div class="col social-media">
               <h6>Redes Sociais</h6>
               <div class="social-media-links">
                  <i class="fab fa-facebook-f"></i>
                  <i class="fab fa-instagram"></i>
                  <i class="fab fa-twitter"></i>
               </div>
            </div>
         </div>
      </div>
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
