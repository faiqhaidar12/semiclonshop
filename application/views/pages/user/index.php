<main class="container">
    <?php $this->load->view('layouts/_alert') ?>
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="card">
                <div class="card-header">
                    <span>Pengguna</span>
                    <a href="<?= base_url('user/create') ?>" class="btn btn-sm btn-secondary mb-1"><i class="fas fa-plus-circle"> </i> Tambah
                    </a>
                    <div class="float-end">
                        <?= form_open(base_url('user/search'), ['method' => 'POST']) ?>
                        <div class="input-group">
                            <input name="keyword" type="text" class="form-control form-control-sm text-center" placeholder="Cari" value="<?= $this->session->userdata('keyword') ?>" />
                            <div class="input-group-append mx-1">
                                <button class="btn btn-secondary btn-sm" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                                <a href="<?= base_url('user/reset') ?>" class="btn btn-secondary btn-sm"><i class="fas fa-eraser"></i></a>
                            </div>
                        </div>
                        <?= form_close() ?>
                    </div>
                </div>
                <div class="card-body table-responsive">
                    <table class="table table-hover align-middle">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Pengguna</th>
                                <th scope="col">Email</th>
                                <th scope="col">Role</th>
                                <th scope="col">Status</th>
                                <th scope="col" class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 0;
                            foreach ($content as $row) : $no++; ?>
                                <tr>
                                    <td><?= $no ?></td>
                                    <td>
                                        <p>
                                            <img src="<?= $row->image ? base_url("images/user/$row->image") : base_url("images/user/default.png") ?>" alt="gambar" height="50" width="50" />
                                            <?= $row->name ?>
                                        </p>
                                    </td>
                                    <td><?= $row->email ?></td>
                                    <td><?= $row->role ?></td>
                                    <td><?= $row->is_active ? 'Aktif' : 'Tidak Aktif' ?></td>
                                    <td class="text-center">
                                        <a href="<?= base_url("user/edit/$row->id") ?>">
                                            <i class="fas fa-edit text-warning"></i>
                                        </a>
                                        <?= form_open(base_url("/user/delete/$row->id"), ['method' => 'POST']) ?>
                                        <?= form_hidden('id', $row->id) ?>
                                        <button class="btn btn-sm" type="submit" onclick="return confirm('Apakah anda yakin?')">
                                            <i class="fas fa-trash text-danger"></i>
                                        </button>
                                        <?= form_close() ?>
                                    </td>
                                </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
                <nav aria-label="Page navigation example " class="mx-2">
                    <?= $pagination ?>
                </nav>
            </div>
        </div>
    </div>
</main>