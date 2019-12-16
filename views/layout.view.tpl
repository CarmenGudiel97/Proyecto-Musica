<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Tower Record</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="public/css/jazz.css" /> -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
    integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
    integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
    crossorigin="anonymous"></script>

  <style>
    .brand {
      width: 150px;
      padding: 21px 15px 0px 15px;
    }
    .article {
      margin-top: 1.5em;
    }
    .art-img {
      width: 100%;
      margin-bottom: 1em;
    }
    .lo {
      width: 210px;
      height:115px;
    }
    .searchbox {
      margin-top: 1em;
      margin-bottom: 1em;
    }
  </style>
  {{foreach css_ref}}
  <link rel="stylesheet" href="{{uri}}" />
  {{endfor css_ref}}
</head>

<body>
          <div class="row" style="margin-left:0px !important; margin-right:0px !important;">
            <div style="vertical-align:top;padding-top:0" class="col-sm-12 col-md-10" style="padding-left:40px">
              <img class="lo" src="public/imgs/logo_tower.png" alt="JazzBrand" />
            </div >
            <div   class="col-sm-12 col-md-2 align-baseline align-self-end">
             <div style="vertical-align:top;padding-top:0;">
               <img src="public/imgs/carrito_compra.png" alt="compras">
             </div>
              
              <div class="col-sm-12 col-md-12 text-center text-md-right align-self-end">
            
                <img src="public/imgs/logo_facebook.png" alt="Facebook" />
                <img src="public/imgs/logo_instagram.png" alt="Instagram">
                <img src="public/imgs/logo_twitter.png" alt="Twitter">
  
              </div>
               </div>
            
          </div>
          <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav"
              aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav d-flex justify-content-around" style="width:100%;color:#FFF">
                <li class="nav-item ">
                  <a  style="color:#FFF" href="index.php?page=home">RECORDS.VIDEO.BOOKS</a>
                </li>
         
                 <li class="nav-item dropdown">                 

                    <a style="color:#FFF" class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Guitarras
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=1">Eléctrica</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=2">Acústica</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=3">Clásica</a>
                    </div>
                  </li>
         
                  <li class="nav-item dropdown">
                    <a style="color:#FFF" class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Bajo
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=4">Eléctrico</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=5">Acústico</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=6">Amplificadores</a>
                    </div>
                  </li>
                  <li class="nav-item dropdown">
                    <a style="color:#FFF" class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Teclado
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=7">Teclados Digitales</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=8">Piano Digitales</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=9">Sintetizadores</a>
                    </div>
                  </li>
                  <li class="nav-item dropdown">
                    <a style="color:#FFF" class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Bateria
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=10">Acústica</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=11">Electrónica</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=12">Platillos</a>
                    </div>
                  </li>
                  <li class="nav-item dropdown">
                    <a style="color:#FFF" class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Micrófono
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=13">Alámbrico para vocalista</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=14">Alámbrico Instrumento</a>
                      <a class="dropdown-item" href="index.php?page=equipos&id_sub_categ_equipo=15">Inalámbrico para vocalista</a>
                    </div>
                  </li>
             
                <li class="nav-item">
                  <a style="color:#FFF" href="index.php?page=login">Iniciar Sesión</a>
                </li>
              </ul>
            </div>
          </nav>
            <div class="container" style="margin-top:1em;margin-bottom: 1em;">
                {{{page_content}}}
                <div class="text-center">
                  <img style="width:45%"  src="public/imgs/fondo_web.png" alt="fondo">
                </div>
                
            </div>
            
            
            {{foreach js_ref}}
                <script src="{{uri}}"></script>
            {{endfor js_ref}}
            <script src="https://unpkg.com/ionicons@4.4.1/dist/ionicons.js"></script>
        </body>
    </html>