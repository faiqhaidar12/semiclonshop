<?php


defined('BASEPATH') or exit('No direct script access allowed');

class Checkout_model extends MY_Model
{

    public $table = 'orders';

    public function getDefaultValues()
    {
        return [
            'name'          => '',
            'address'       => '',
            'phone'         => '',
            'status'        => '',
        ];
    }

    public function getValidationRules()
    {
        $validationRules = [
            [
                'field' => 'name',
                'label' => 'Nama',
                'rules' => 'trim|required',
            ],
            [
                'field' => 'address',
                'label' => 'alamat',
                'rules' => 'trim|required',
            ],
            [
                'field' => 'phone',
                'label' => 'Telepon',
                'rules' => 'trim|required|max_length[15]',
            ]
        ];
        return $validationRules;
    }
}

/* End of file Checkout_model.php */