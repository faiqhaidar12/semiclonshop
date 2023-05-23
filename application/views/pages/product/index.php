<main class="container">
    <?php $this->load->view('layouts/_alert') ?>
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="card">
                <div class="card-header">
                    <span>Produk</span>
                    <a href="<?= base_url('product/create') ?>" class="btn btn-sm btn-secondary mb-1"><i class="fas fa-plus-circle"> </i> Tambah
                    </a>
                    <div class="float-end">
                        <form action="<?= base_url("product/search") ?>" method="POST">
                            <div class="input-group">
                                <input type="text" name="keyword" class="form-control form-control-sm text-center" placeholder="Cari" value="<?= $this->session->userdata('keyword') ?>" />
                                <div class="input-group-append mx-1">
                                    <button class="btn btn-secondary btn-sm" type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                    <a href="<?= base_url("product/reset") ?>" class="btn btn-secondary btn-sm"><i class="fas fa-eraser"></i></a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="card-body table-responsive">
                    <table class="table table-hover align-middle">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Produk</th>
                                <th scope="col">Kategori</th>
                                <th scope="col">Harga</th>
                                <th scope="col">Stock</th>
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
                                            <img src="<?= $row->image ? base_url("images/product/$row->image") : base_url("images/product/default.png") ?>" alt="gambar" height="50" />
                                            <?= $row->product_title ?>
                                        </p>
                                    </td>
                                    <td>
                                        <span class="badge bg-primary"><i class="fas fa-tags"></i> <?= $row->category_title ?></span>
                                    </td>
                                    <td>Rp<?= number_format($row->price, 0, ',', '.') ?>,-</td>
                                    <td><?= $row->is_available ? 'Tersedia' : 'Kosong' ?></td>
                                    <td class="text-center">
                                        <a href="<?= base_url("/product/edit/$row->id") ?>">
                                            <i class="fas fa-edit text-warning"></i>
                                        </a>
                                        <?= form_open(base_url("/product/delete/$row->id"), ['method' => 'POST']) ?>
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
                <nav aria-label="Page navigation example" class="mx-2">
                    <?= $pagination ?>
                </nav>
            </div>
        </div>
    </div>
</main>