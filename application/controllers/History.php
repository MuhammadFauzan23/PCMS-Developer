<?php
defined('BASEPATH') or exit('No direct script access allowed');

class History extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('HistoryModel');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
    }

    public function history()
    {
        $data = [
            'title' => 'History',
        ];
        return $this->template->load('layout/template', '/history', $data);
    }

    public function listHistory()
    {
        // POST data
        $postData = $this->input->post();
        // Get data
        $data = $this->HistoryModel->getListHistory($postData);
        echo json_encode($data);
    }
}
