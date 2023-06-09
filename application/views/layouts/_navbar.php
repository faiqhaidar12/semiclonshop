<?php
$role   = $this->session->userdata('role');
if ($role != 'admin') {
}
?>
<nav class="navbar navbar-expand-lg navbar-light fixed-top bg-header">
    <div class="container">
        <a class="navbar-brand" href="<?= base_url('/') ?>">Semiclon Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="<?= base_url('/') ?>">Home</a>
                </li>
                <?php if ($role === 'admin') : ?>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" id="dropdown-1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Manage</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown-1">
                            <a href="<?= base_url('category') ?>" class="dropdown-item">Admin Kategori</a>
                            <a href="<?= base_url('product') ?>" class="dropdown-item">Admin Produk</a>
                            <a href="<?= base_url('/order') ?>" class="dropdown-item">Admin Order</a>
                            <a href="<?= base_url('/user') ?>" class="dropdown-item">Admin Pengguna</a>
                        </div>
                    </li>
                <?php endif ?>
                <?php if ($role === 'member') : ?>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" id="dropdown-1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Manage</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown-1">
                            <a href="<?= base_url('/myorder') ?>" class="dropdown-item">Order</a>
                        </div>
                    </li>
                <?php endif ?>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="<?= base_url('/cart') ?>" class="nav-link"><i class="fas fa fa-shopping-cart"></i> Cart <span class="text-danger">(<?= getCart(); ?>)</span></a>
                </li>
                <?php if (!$this->session->userdata('is_login')) : ?>
                    <li class="nav-item">
                        <a href="<?= base_url('/login') ?>" class="nav-link">Login</a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('/register') ?>" class="nav-link">Register</a>
                    </li>
                <?php else : ?>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" id="dropdown-2" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?= $this->session->userdata('role') ?></a>
                        <div class="dropdown-menu" aria-labelledby="dropdown-2">
                            <a href="<?= base_url('/profile') ?>" class="dropdown-item">Profile</a>
                            <a href="<?= base_url('/myorder') ?>" class="dropdown-item">Orders</a>
                            <a href="<?= base_url('/logout') ?>" class="dropdown-item">Logout</a>
                        </div>
                    </li>
                <?php endif ?>
            </ul>
        </div>
    </div>
</nav>