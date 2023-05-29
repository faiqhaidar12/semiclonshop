<?php
if ($status === 'waiting') {
    $badge_status   = 'bg-warning';
    $status         = 'Menunggu Pembayaran';
}
if ($status === 'paid') {
    $badge_status   = 'bg-primary';
    $status         = 'Dibayar';
}
if ($status === 'delivered') {
    $badge_status   = 'bg-success';
    $status         = 'Dikirim';
}
if ($status === 'cancel') {
    $badge_status   = 'bg-danger';
    $status         = 'Dibatalkan';
}
?>

<?php if ($status) : ?>
    <span class="badge rounded-pill <?= $badge_status ?>"><?= $status ?></span>
<?php endif ?>