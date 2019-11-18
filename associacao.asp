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
     <!--#include file="menu.asp"-->
   
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

		<h3>Dados Pessoais</h3><br>

				
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputNome">Nome completo *</label>
      <input type="text" class="form-control" id="nome" placeholder="" required>
    </div>

	
	
	<div class="form-group col-md-12">
      <label for="inputEmail">Email *</label>
      <input type="email" class="form-control" id="email" placeholder="Apenas um Email" required>
    </div>
	
</div>
	
	<div class="form-row">
  	
	
	
	<div class="form-group col-md-4">
      <label for="inputRG">RG</label>
      <input type="text" class="form-control" id="rg" placeholder="">
    </div>
  	
	<div class="form-group col-md-4">
      <label for="inputCPF">CPF *</label>
      <input type="text" class="form-control" id="CPF" placeholder="Somente números" required>
    </div>
	
	<div class="form-group col-md-4">
      <label for="inputCRO">CRO</label>
      <input type="text" class="form-control" id="CRO" placeholder="">
    </div>
  	
</div>
	
<div class="form-row">
  	
	<div class="form-group col-md-4">
      <label for="inputsexo">Sexo *</label>
      <select id="sexo" class="form-control">
        <option selected>Selecione</option>
        <option value="M">Masculino</option>
        <option value="F">Feminino</option>
	  </select>      
    </div>
  	
	<div class="form-group col-md-6">
      <label for="inputNasc">Data de Nascimento *</label>
      <input type="date" class="form-control" id="data_nasc" placeholder="dd/mm/aaaa" size="10" maxlength="25" required>
    </div>	
	
</div>
	
<div class="form-row">
  		
	
	<div class="form-group col-md-4">
      <label for="inputNasc">Nacionalidade</label>
      <input type="text" class="form-control" id="nacionalidade" placeholder="">
    </div>
	
	<div class="form-group col-md-4">
      <label for="inputCivil">Estado Civil</label>
      <select id="estado_civil" class="form-control">
		<option selected>Selecione</option>
		<option value="Solteiro">Solteiro</option>
		<option value="Casado">Casado</option>
		<option value="Separado">Separado</option>
		<option value="Divorciado">Divorciado</option>					
		<option value="Viúvo">Viúvo</option>
	  </select>      
    </div>
  
  </div>
	
	<div class="form-row">
  	
  	
	<div class="form-group col-md-4">
      <label for="inputTel">Telefone</label>
      <input type="tel" class="form-control" id="telefone" placeholder="(dd) 0000-0000">
	</div>
  	
	<div class="form-group col-md-4">
      <label for="inputCel">Celular *</label>
	  <input type="tel" class="form-control" id="celular" placeholder="(dd) 00000-0000" required>
    </div>
	
</div>
	
<div class="form-row">
  	
	<div class="form-group col-md-6">
      <label for="inputTel">Digite uma senha *</label>
      <input id="senha" type="password" name="senha" size="20" maxlength="15" class="form-control" required>
	</div>
	  	
</div>




<h2>Endereço Completo</h2><br>

				
<div class="form-row">

	<div class="form-group col-md-4">
      <label for="inputCEP">CEP *</label>
      <input type="text" class="form-control" id="cep" placeholder="" required>
    </div>

	<div class="form-group col-md-12">
      <label for="inputEnD">Endereço Completo *</label>
      <input type="text" class="form-control" id="endereco" placeholder="Rua, Nº, Complemento" required>
    </div>

	<div class="form-group col-md-6">
      <label for="inputBairro">Bairro *</label>
      <input type="text" class="form-control" id="bairro" placeholder="" required>
    </div>
	
	<div class="form-group col-md-6">
      <label for="inputCidade">Cidade *</label>
      <input type="text" class="form-control" id="cidade" placeholder="" required>
    </div>	


	<div class="form-group col-md-6">
      <label for="inputUF">Estado *</label>
      <select id="estado" name="uf" class="qt form-control" required>
				<option value=''selected>--</option><option value='AC'>AC</option><option value='AL'>AL</option><option value='AM'>AM</option><option value='AP'>AP</option><option value='BA'>BA</option><option value='CE'>CE</option><option value='DF'>DF</option><option value='ES'>ES</option><option value='GO'>GO</option><option value='MA'>MA</option><option value='MG'>MG</option><option value='MS'>MS</option><option value='MT'>MT</option><option value='PA'>PA</option><option value='PB'>PB</option><option value='PE'>PE</option><option value='PI'>PI</option><option value='PR'>PR</option><option value='RJ'>RJ</option><option value='RN'>RN</option><option value='RO'>RO</option><option value='RR'>RR</option><option value='RS'>RS</option><option value='SC'>SC</option><option value='SE'>SE</option><option value='SP'>SP</option><option value='TO'>TO</option>
			  </select>
    </div>
	<div class="form-group col-md-6">
      <label for="inputPais">País</label>
      <input type="text" class="form-control" id="pais" placeholder="">
    </div>

</div>

<h2>Instituição</h2><br>

				
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputInst">Instituição *</label>
      <input type="text" class="form-control" id="instituicao" placeholder="" required>
    </div>

    <div class="form-group col-md-12">
      <label for="inputDepto">Departamento</label>
      <input type="text" class="form-control" id="depto" placeholder="">
    </div>

    <div class="form-group col-md-12">
      <label for="inputDisc">Disciplina</label>
      <input type="text" class="form-control" id="disciplina" placeholder="">
    </div>

    <div class="form-group col-md-12">
      <label for="inputTelDepto">Telefone do Departamento</label>
      <input type="text" class="form-control" id="tel_depto" placeholder="">
    </div>

</div>
	


  <div class="form-group">
    <div class="form-check">
		<br><br><br><input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Declaro que li e estou de acordo com o Estatuto da Sociedade
      </label>
      <div class="invalid-feedback">
       Você precisa concordar com os termos antes de prosseguir.
      </div>
    </div>
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
