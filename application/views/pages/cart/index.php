<main class="container">
    <?php $this->load->view('layouts/_alert') ?>
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-3">
                <div class="card-header">Keranjang Belanja</div>
                <div class="card-body table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Produk</th>
                                <th>Harga</th>
                                <th class="text-center">Jumlah</th>
                                <th class="text-center">Subtotal</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($content as $row) : ?>
                                <tr>
                                    <td>
                                        <p>
                                            <img src="<?= $row->image ? base_url("images/product/$row->image") : base_url("images/product/default.png") ?>" height="50" alt="gambar" />
                                            <strong><?= $row->title ?></strong>
                                        </p>
                                    </td>
                                    <td>Rp<?= number_format($row->price, 0, ',', '.') ?>,-</td>
                                    <td>
                                        <form action="<?= base_url("cart/update/$row->id") ?>" method="POST">
                                            <input type="hidden" name="id" value="<?= $row->id ?>">
                                            <div class="input-group">
                                                <input type="number" name="qty" class="form-control text-center " value="<?= $row->qty ?>" />
                                                <div class="input-group-append mx-1">
                                                    <button type="submit" class="btn btn-info">
                                                        <i class="fas fa-check"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </td>
                                    <td class="text-center">Rp<?= number_format($row->subtotal, 0, ',', '.') ?>,-</td>
                                    <td>
                                        <form action="<?= base_url("cart/delete/$row->id") ?>" method="POST">
                                            <input type="hidden" name="id" value="<?= $row->id ?>">
                                            <button type="submit" class="btn btn-danger" onclick="return confirm('Apakah anda yakin?')">
                                                <i class="fas fa-trash-alt"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            <?php endforeach ?>
                            <td colspan="3"><strong>Total:</strong></td>
                            <td class="text-center"><strong>Rp<?= number_format(array_sum(array_column($content, 'subtotal')), 0, ',', '.') ?>,-</strong></td>
                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    <a href="/checkout.html" class="btn btn-success float-end">
                        Pembayaran <i class="fas fa-angle-right"></i></a>
                    <a href="<?= base_url('/') ?>" class="btn btn-warning text-white float-start"><i class="fas fa-angle-left"></i> Kembali Belanja</a>
                </div>
            </div>
        </div>
    </div>
</main>