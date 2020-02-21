<!-- Including Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
   <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="index2019.asp">
         <img src="svg/sbod-main-logo.svg" alt="SBO Digital">
      </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive"
         aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      <nav class="collapse navbar-collapse shift" id="navbarResponsive">
         <ul class="navbar-nav ml-auto my-2 my-lg-0">
            <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="index2019.asp">Home</a>
            </li>
            <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="sobre.asp">Quem Somos</a>
            </li>			 
            <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="estatuto.asp">Estatuto</a>
            </li>
			 <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="diretoria.asp">Diretoria</a>
            </li>
			 <% if session("cod") = "" or isnull(session("cod")) then %>
            <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="associacao.asp">Novos associados</a>
            </li>
			<% end if %>
            <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="contato.asp">Contato</a>
            </li>
            <li class="nav-item">
			<% if session("cod") = "" or isnull(session("cod")) then %>
               <a class="nav-link js-scroll-trigger" href="login.asp"><i class="fas fa-user"></i> Entrar</a>
			<% else %>
			   <a class="nav-link js-scroll-trigger" href="AreaAssociado.asp"><i class="fas fa-user"></i> Área Associado</a>
			<% end if %>
            </li>
         </ul>
      </nav>
   </div>
</nav> <!-- End Navigation -->
