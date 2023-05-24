<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">

<head>
    <script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
    <meta name="generator" content="Hugo 0.111.3" />
    <title><?= isset($title) ? $title : 'SemiclonShop' ?> E-Commerce</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Comme:wght@300;400&family=Roboto:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet" />
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/navbar-fixed/" />

    <link href="<?= base_url('/assets/libs/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" />

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180" />
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png" />
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png" />
    <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json" />
    <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9" />
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico" />
    <meta name="theme-color" content="#712cf9" />
    <link rel="stylesheet" href="<?= base_url('/assets/css/app.css') ?>" />
    <!-- FontAwesome Css -->
    <link rel="stylesheet" href=" <?= base_url('/assets/libs/fontawesome/css/all.min.css') ?> " />
</head>

<body class="bg-isi">

    <!-- Navbar -->
    <?php $this->load->view('layouts/_navbar'); ?>
    <!-- End Navbar -->

    <!-- Content -->
    <?php $this->load->view($page); ?>
    <!-- End Content -->

    <script>
        // Auto close the alert after 5 seconds (5000 milliseconds)
        setTimeout(function() {
            document.getElementById('autoCloseAlert').classList.remove('show');
            document.getElementById('autoCloseAlert').classList.add('hide');
            setTimeout(function() {
                document.getElementById('autoCloseAlert').remove();
            }, 500);
        }, 5000);
    </script>
    <script src="<?= base_url() ?>assets/libs/jquery/jquery-3.6.4.min.js"></script>
    <script src="<?= base_url() ?>assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?= base_url() ?>assets/js/app.js"></script>
</body>

</html>