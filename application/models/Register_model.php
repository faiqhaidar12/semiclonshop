<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Register_model extends MY_Model
{
    protected $table = 'user';


    //TODO : menentukan default values
    public function getDefaultValues()
    {
        return [
            'name'      => '',
            'email'     => '',
            'password'  => '',
            'role'      => '',
            'is_active' => ''
        ];
    }

    //TODO : untuk validasi
    public function getValidationRules()
    {
        $validationRules = [
            [
                'field'         => 'name',
                'label'         => 'Nama',
                'rules'         => 'trim|required'
            ],
            [
                'field'         => 'email',
                'label'         => 'Email',
                'rules'         => 'trim|required|valid_email|is_unique[user.email]',
                'errors'        => [
                    'is_unique' => 'Email %s sudah dipakai.'
                ]
            ],
            [
                'field'         => 'password',
                'label'         => 'Password',
                'rules'         => 'required|min_length[8]'
            ],
            [
                'field'         => 'password_confirmation',
                'label'         => 'Konfirmasi Password',
                'rules'         => 'required|matches[password]'
            ],
        ];

        return $validationRules;
    }

    public function run($input)
    {
        $data = [
            'name'                  => $input->name,
            'email'                 => strtolower($input->email),
            'password'             => hashEncrypt($input->password),
            'role'                  => 'member'
        ];

        //TODO :membuat data dari mengambil variabel $data
        $user = $this->create($data);

        //TODO :menyimpan beberapa data
        $sess_data = [
            'id'                    => $user,
            'name'                  => $data['name'],
            'email'                 => $data['email'],
            'role'                  => $data['role'],
            'is_login'              => true
        ];

        $this->session->set_userdata($sess_data);
        return true;
    }
}

/* End of file ModelName.php */
