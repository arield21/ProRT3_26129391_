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
                    <h5 class=" text-center ">Listado de Usuarios Registrados</h5> <br>
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
                        <th scope="col"> <br></th>
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
                        <td><br></td>
                        <!--<td><a class="btn btn-primary" href="< ?= base_url('/edit/' . $dato['id_usuario']) ?>"> <br> </a>
                          <a class="btn btn-danger" href="< ?= base_url('/delete/' . $dato['id_usuario']) ?>"> </a>-->
                        </td>
                      </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
              </div>
              </div>
         <!--<a href="< ?= base_url('/add'); ?>" class="btn btn-success"> </a>-->
      </div>
  </div>
</div>