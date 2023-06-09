<main class="container">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="card">
                <div class="card-header">
                    <span>Formulir Kategori</span>
                </div>
                <div class="card-body">
                    <?= form_open($form_action, ['method' => 'POST']) ?>
                    <?= isset($input->id) ? form_hidden('id', $input->id) : '' ?>
                    <div class="form-group">
                        <label for="">Kategori</label>
                        <?= form_input('title', $input->title, ['class' => 'form-control', 'id' => 'title', 'onkeyup' => 'createSlug()', 'required' => true, 'autofocus' => true]) ?>
                        <small class="form-text text-danger"><?= form_error('title') ?></small>
                    </div>
                    <div class="form-group">
                        <label for="">Slug</label>
                        <?= form_input('slug', $input->slug, ['class' => 'form-control', 'id' => 'slug', 'required' => true]) ?>
                        <small class="form-text text-danger"><?= form_error('slug') ?></small>
                    </div>
                    <button type="submit" class="btn btn-primary mt-2">
                        Simpan
                    </button>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </div>
</main>