<h1 class="text-warning">Microfono Inalambrico</h1>
<div class="row">
  {{foreach categorias}}
  <div style="border:1px solid #222" class="col-md-4">
    <h3>{{descripcion}}</h3>
    <h4>HNL {{precio_equipo}}</h4>
    <!-- <?php echo '<img src="data:image/jpg;base64,'.base64_encode( {{img}} ).'"/>' ?> -->
    <a class="btn btn-primary" name="Carrito" href="{{id_equipo}}">Agregar al carrito</a>
    <br><br>
  </div>        
{{endfor categorias}} 
</div>
    
<!-- <a href="#">Regresar</a> -->
<section class="row">

{{if haserrors}}
<section class="alert">
      <ol>
        {{foreach errors}}
        <li>{{this}}</li>
        {{endfor errors}}
      </ol>
</section>
{{endif haserrors}}
</section>
<script>
  $().ready(
    function(){
      {{ifnot readonly}}
      $("#btnCancelar").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          window.location.assign("#");
      });
      $("#btnConfirmar").click(function (e) {
        e.preventDefault();
        e.stopPropagation();
        /* validar en el cliente aqui */
        document.forms[0].submit();
      });
      {{endifnot readonly}}
    }
  );
</script>