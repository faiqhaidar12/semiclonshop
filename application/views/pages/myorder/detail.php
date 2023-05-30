<main class="container">
    <?php $this->load->view('layouts/_alert');
    ?>
    <div class="row">
        <div class="col-md-3">
            <?php $this->load->view('layouts/_menu');
            ?>
        </div>
        <div class="col-md-9">
            <div class="card">
                <div class="card-header">
                    Detail Order #<strong><?= $order->invoice ?></strong>
                    <div class="float-end">
                        <?php $this->load->view('layouts/_status', ['status' => $order->status]); ?>
                    </div>
                </div>
                <div class="card-body table-responsive">
                    <p class="text-uppercase">Tanggal : <?= str_replace('-', '/', date("d-m-Y", strtotime($order->date))) ?></p>
                    <p class="text-uppercase">Nama : <?= $order->name ?></p>
                    <p class="text-uppercase">Telepon : <?= $order->phone ?></p>
                    <p class="text-uppercase">Alamat :<?= $order->address ?></p>
                    <hr>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Produk</th>
                                <th>Harga</th>
                                <th class="text-center">Jumlah</th>
                                <th class="text-center">Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($order_detail as $row) : ?>
                                <tr>
                                    <td>
                                        <p>
                                            <img src="<?= $row->image ? base_url("images/product/$row->image") : base_url("images/product/default.png") ?>" height="50" alt="gambar" />
                                            <strong><?= $row->title ?></strong>
                                        </p>
                                    </td>
                                    <td>Rp.<?= number_format($row->price, 0, ',', '.') ?>,-</td>
                                    <td class="text-center"><?= $row->qty ?></td>
                                    <td class="text-center">Rp<?= number_format($row->subtotal, 0, ',', '.') ?>,-</td>
                                </tr>
                                <td colspan="3"><strong>Total:</strong></td>
                                <td class="text-center"><strong>Rp<?= number_format(array_sum(array_column($order_detail, 'subtotal')), 0, ',', '.') ?>,-</strong></td>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
                <?php if ($order->status == 'waiting') : ?>
                    <div class="card-footer">
                        <a href="<?= base_url("/myorder/confirm/$order->invoice") ?>" class="btn btn-success">Konfirmasi pembayaran</a>
                    </div>
                <?php endif ?>
            </div>
            <?php if (isset($order_confirm)) : ?>
                <div class="row mb-3 mt-2 align-items-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Bukti Transfer</div>
                            <div class="card-body">
                                <p>Dari Rekening: <?= $order_confirm->account_number ?></p>
                                <p>Atas Nama: <?= $order_confirm->account_name ?></p>
                                <p>Nominal:<strong>Rp.<?= number_format($order_confirm->nominal, 0, ',', '.') ?>,-</strong></p>
                                <p>Catatan: <?= $order_confirm->note ?></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mt-2">
                        <div class="col-md-4 rounded">
                            <img class="rounded border mx-auto d-block" src="<?= base_url("/images/confirm/$order_confirm->image") ?>" height="200" width="300" alt="bukti transfer" />
                        </div>
                    </div>
                </div>
            <?php endif ?>
        </div>
    </div>
</main>