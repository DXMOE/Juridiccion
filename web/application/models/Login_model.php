<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 *
 */
class Login_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function login_user($usuario,$contraseña)
	{
		$this->db->where('usuario',$usuario);
		$this->db->where('contraseña',$contraseña);
		$query = $this->db->get('eg_users');
		if($query->num_rows() == 1)
		{
			return $query->row();
		}else{
			$this->session->set_flashdata('usuario_incorrecto','Los datos introducidos son incorrectos');
			redirect(base_url().'login','refresh');
		}
	}
}
