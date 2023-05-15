<main class="container">
    <?php $this->load->view('layouts/_alert'); ?>
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="card">
                <div class="card-header">
                    <span>Kategori</span>
                    <a href="/admin-category-form.html" class="btn btn-sm btn-secondary mb-1"><i class="fas fa-plus-circle"> </i> Tambah
                    </a>
                    <div class="float-end">
                        <form action="#">
                            <div class="input-group">
                                <input type="text" class="form-control form-control-sm text-center" placeholder="Cari" />
                                <div class="input-group-append mx-1">
                                    <button class="btn btn-secondary btn-sm" type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                    <a href="#" class="btn btn-secondary btn-sm"><i class="fas fa-eraser"></i></a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="card-body table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Title</th>
                                <th scope="col">Slug</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 0;
                            foreach ($content as $row) : $no++ ?>
                                <tr>
                                    <td><?= $no ?></td>
                                    <td><?= $row->title ?></td>
                                    <td><?= $row->slug ?></td>
                                    <td>
                                        <form action="#">
                                            <a href="">
                                                <button class="btn btn-sm">
                                                    <i class="fas fa-edit text-warning"></i>
                                                </button>
                                            </a>
                                            <button class="btn btn-sm" type="submit" onclick="return confirm('Apakah anda yakin?')">
                                                <i class="fas fa-trash text-danger"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
                <nav aria-label="Page navigation example" class="mx-2">
                    <?= $pagination ?>
                </nav>
            </div>
        </div>
    </div>
</main>