<div class="container-sm ">

   <div class="">
          <?php if (session('mensaje')) { ?>

            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                <strong>En hora buena!!</strong> <?= session('mensaje'); ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>

          <?php } ?>

            <div class="container justify-content-center ">
                 <div class="container-sm bg-body-secondary  rounded-1 border" style="background-color: var(--bs-tertiary-bg);"><br>
                    <h5 class=" text-center ">Administrar Usuarios Registrados</h5> <br>
                 </div>
              <div class="table-responsive-sm ">
                <table class="table table-striped ">
                    <thead class="table-group-divider">
                      <tr >
                        <th scope="col"><br></th>
                        <th scope="col">id</th>
                        <th class="" scope="col">nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">usuario</th>
                        <th scope="col">email</th>
                        <th scope="col"> Accion</th>
                      </tr>
                    </thead>
                  <tbody class="table-group-divider">
                      <?php foreach ($datos as $dato) : ?>
                      <tr>
                        <th scope="col"><br></th>
                        <th scope="row "><?php echo $dato['id_usuario']; ?></th>
                        <td><?php echo $dato['nombre']; ?></td>
                        <td><?php echo $dato['apellido']; ?></td>
                        <td><?php echo $dato['usuario']; ?></td>
                        <td><?php echo $dato['email']; ?></td>
                        <td><a class="btn btn-primary" href="<?= base_url('/edit/' . $dato['id_usuario']) ?>">Editar</a>
                          <a class="btn btn-danger" href="<?= base_url('/delete/' . $dato['id_usuario']) ?>">Eliminar</a>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
              </div>
              </div>
         <a href="<?= base_url('/add'); ?>" class="btn btn-success">Nuevo</a>
      </div>
  </div>
</div>









<!--<div class="container">
    <div class="card">
          USUARIO ING Featured Listado de Usuarios
        </div>
        <div class="card-body">
              <table class="table">
                    <thead>
                      <tr>
                          <th scope="col">id_usuario</th>
                          <th scope="col">nombre</th>
                          <th scope="col">Apellido</th>
                          <th scope="col">email</th>
                          <th scope="col">usuario</th>
                          <th scope="col">Accion</th>   
                      </tr>
                    </thead>
                     <tbody>
                    < ?php foreach ($datos as $dato): ?>                    
                         <tr>
                            <th scope="row">< ?php echo $dato['id_usuario']; ?></th>
                            <td>< ?php echo $dato['nombre']; ?></td>
                            <td>< ?php echo $dato['apellido']; ?></td>
                            <td>< ?php echo $dato['email']; ?></td>
                            <td>< ?php echo $dato['usuario']; ?></td>
                            <td><a href="< ?= base_url('Home/edit/'.$dato['id_usuario']) ?>">Editar</a></td>   
                         </tr>
                      < ?php endforeach; ?>  
                    </tbody>
              </table>
              <a href="/add" class="btn btn-success">Cancelar</a>
        </div>
</div>-->

<!--<div class="card">
  <h5 class="card-header">LISTADO  ___ Featured</h5>
  <div class="card-body">
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nom</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>

   
  </div>
</div>-->