<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		$this->load->helper('url');
		$this->load->view('welcome_message');
	}

public function info1()
	{
		$this->load->helper('url');
		$this->load->view('info1');

	}
	public function info2()
	{
		$this->load->helper('url');
		$this->load->view('info2');

	}
	public function info3()
	{
		$this->load->helper('url');
		$this->load->view('info3');

	}
	public function info4()
	{
		$this->load->helper('url');
		$this->load->view('info4');

	}
	public function info5()
	{
		$this->load->helper('url');
		$this->load->view('info5');

	}

	public function info6()
	{
		$this->load->helper('url');
		$this->load->view('info6');

	}
}	