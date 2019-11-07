<!DOCTYPE html>
<html lang="pt-br">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">

   <title>SBODigital - Admissão de Novo Sócio</title>
	<link href="css/padrao.css?novo" rel="stylesheet" type="text/css">
	
   <link rel="stylesheet" media="screen" href="css/sbod-theme.css">
   <!-- Bootstrap -->
   <link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
   <!-- Font Awesome -->
   <script src="https://kit.fontawesome.com/af40653a1b.js" crossorigin="anonymous"></script>
</head>
<body>

   <header>
      <!-- Navigation Bar -->
      <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
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

				
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>
  
			<div class="col-md-12">
				<label><strong>Nome</strong></label><br>
				<input id="nome" type="text" name="nome" size="50" value="" class="form-control" required>
			 </div>	


		    <div class="col-md-12">
					<label><strong>Email</strong></label> <br>
					<input id="email" type="email" name="email" size="50" value="" class="form-control" required>
			</div>


			<div class="col-md-3">
				<label><strong>RG</strong></label><br>
			    <input id="rg" type="text" name="rg" size="50" value="" maxlength="12"  class="form-control"> 
			</div>

			<div class="col-md-3">
				<label><strong>CPF</strong></label><br>
				<input id="cpf" type="text" name="cpf" class="cpf form-control" size="50" value="" required  >	
			</div>

			<div class="col-md-3">
				<label><strong>CRO</strong></label>
				<br>
				<input type="text" name="cro" size="50" value="" class="form-control">	
			</div>
			
			<div class="col-md-3">
				<label><strong>Estado Civil</strong></label>
				<select  class="form-control input-box" name="estado_civil" id="estado_civil">
              		<option value="">-</option>
					<option value="Solteiro">Solteiro</option>
              		<option value="Casado">Casado</option>
					<option value="Separado">Separado</option>
              		<option value="Divorciado">Divorciado</option>					
					<option value="Viúvo">Viúvo</option>
				</select>
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
				<label><strong>Telefone</strong></label><br>
			  	<input id="fone1" type="text" class="td phone_with_ddd form-control" name="fone1"  size="18" value="">
			</div>

			<div class="col-md-4">				
			  <label><strong>Celular</strong></label><br>
			  <input id="celular" name="celular" type="text" class="td cel form-control"  value="" size="18">
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
	<h2>Endere&ccedil;o Completo</h2><br>

			<div class="col-md-12">
				<label><strong>Cep</strong></label><br>
              	<input id="cep" type="text" class="td cep form-control" name="cep1"   size="50" value="" required >
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

			<div class="col-md-2">
			  <label><strong>Estado:</strong></label><br>
			  <select id="estado" name="uf1" class="qt form-control" required>
				<option value=''selected>--</option><option value='AC'>AC</option><option value='AL'>AL</option><option value='AM'>AM</option><option value='AP'>AP</option><option value='BA'>BA</option><option value='CE'>CE</option><option value='DF'>DF</option><option value='ES'>ES</option><option value='GO'>GO</option><option value='MA'>MA</option><option value='MG'>MG</option><option value='MS'>MS</option><option value='MT'>MT</option><option value='PA'>PA</option><option value='PB'>PB</option><option value='PE'>PE</option><option value='PI'>PI</option><option value='PR'>PR</option><option value='RJ'>RJ</option><option value='RN'>RN</option><option value='RO'>RO</option><option value='RR'>RR</option><option value='RS'>RS</option><option value='SC'>SC</option><option value='SE'>SE</option><option value='SP'>SP</option><option value='TO'>TO</option>
			  </select>
			</div>

			<div class="col-md-6">
				<label><strong>País</strong></label><br>
			  	<input name="pais" type="text" class="td form-control" id="pais" value="" size="25" maxlength="50" >
			</div>			

		</div>


	
</div>
        

<div class="row">
	<div class="col-md-12">
	  <h2>Instituição </h2>
	  <br>


	  <div class="col-md-12">
				<label><strong>Instituição</strong></label>
				<br>
				<input id="instituicao" name="instituicao" type="text" value="" size="25" maxlength="50" class="form-control" required>
		</div>

	  <div class="col-md-12">
				<label><strong>Departamento</strong></label>
				<br>
				<input name="departamento" type="text" id="departamento" value="" size="5" maxlength="5" class="form-control">
		</div>

	  <div class="col-md-12">
			<label><strong>Disciplina</strong></label>
			<br>
			<input name="disciplina" type="text" id="disciplina" value="" size="25" maxlength="50" class="form-control">
		</div>

	  <div class="col-md-4">
				<label><strong>Telefone do Departamento</strong></label>
				<br>
				<input name="telefone_depto" type="text" id="telefone_depto" value="" size="20" maxlength="20" class="td cel form-control">
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
