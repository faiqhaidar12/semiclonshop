<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Category extends MY_Controller
{


    public function __construct()
    {
        parent::__construct();
    }


    public function index($page = null)
    {
        $data['tile']       = 'Admin : Category';
        $data['content']    = $this->category->paginate($page)->get();
        $data['total_rows']  = $this->category->count();
        $data['pagination'] = $this->caregory->makePagination()(base_url('category'), 2, $data('total_rows'));
        $data['page']       = 'pages/category/index';

        $this->view($data);
    }
}

/* End of file Category.php */