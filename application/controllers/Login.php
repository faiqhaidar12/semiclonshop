<?php


defined('BASEPATH') or exit('No direct script access allowed');

class Login extends MY_Controller
{


    //TODO : cek apakah user sudah login atau belum
    public function __construct()
    {
        parent::__construct();
        $is_login  = $this->session->userData('is_login');

        if ($is_login) {
            redirect(base_url());
            return;
        }
    }

    public function index()
    {
        if (!$_POST) {
            $input = (object) $this->login->getDefaultValues();
        } else {
            $input = (object) $this->input->post(null, true);
        }

        if (!$this->login->validate()) {
            $data['title']  = 'login';
            $data['input']  = $input;
            $data['page']   = 'pages/auth/login';

            $this->view($data);
            return;
        }

        if ($this->login->run($input)) {
            $this->session->set_flashdata('success', 'Berhasil melakukan login!');
            redirect(base_url());
        } else {
            $this->session->set_flashdata('error', 'Email atau Password anda salah atau akun anda sedang tidak aktif!');
            redirect(base_url('login'));
        }
    }
}

/* End of file Login.php */
