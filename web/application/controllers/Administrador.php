<?php

class  Administrador extends CI_Controller{
  public function _construct(){
    parent::costruct();
    $this->load->database();
    $this->load->helper('url');
    $this->load->library(array('session', 'grocery_CRUD'));
  }
  public function index(){
    if($this->session->userdata('nu_rol') == FALSE || $this->session->userdata('nu_rol') != '1')
    {
      redirect(base_url().'login');
    }
    $output=(object) array ('output' => '', 'js_files' => array(), 'css_files'=> array());
    $this->cargar_vistas($output);
  }

  function cargar_vistas($output=null){
    $this->load->view('administrador.php', $output);
  }


  function encrypt_password($post_array, $primary_key = null)
      {

  	    $this->load->helper('security');
  	    $post_array['contraseña'] = do_hash($post_array['contraseña'], 'sha1');
  	    return $post_array;

      }

  public function eg_users()
  {
    if($this->session->userdata('nu_rol') == FALSE || $this->session->userdata('nu_rol') != '1')
    {
      redirect(base_url().'login');
    }
    try{
      $crud = new grocery_CRUD();

      $crud->set_theme('flexigrid');
      $crud->set_table('eg_users');
      $crud->set_subject('Usuarios');
      $crud->set_language("spanish");
      $crud->set_relation('nu_rol','eg_roles','nombre');
      $crud->display_as('nu_rol','Tipo de usuario');
      $crud->change_field_type('contraseña','password');
      $crud->callback_before_insert(array($this,'encrypt_password'));

      $crud->required_fields('nombre');
      $crud->required_fields('paterno');
      $crud->required_fields('materno');
      $crud->required_fields('usuario');
      $crud->required_fields('rol');


      $output = $crud->render();

      $this->cargar_vistas($output);

    }catch(Exception $e){
      show_error($e->getMessage().' --- '.$e->getTraceAsString());
    }
  }

  public function formato_talleres()
  {
    if($this->session->userdata('nu_rol') == FALSE || $this->session->userdata('nu_rol') != '1')
    {
      redirect(base_url().'login');
    }
    try{

      $crud = new Grocery_CRUD_Multiuploader();
      $this->db = $this->load->database("default",true);
      $crud->unset_export();
      $crud->set_table('formato_talleres');
      $crud->set_theme('flexigrid');
      $crud->set_subject('Nuevo Taller');
      $crud->columns(array('nu_user', 'localidad', 'municipio', 'nombre_taller', 'unidad_salud', 'fecha'));
      $crud->set_language("spanish");
      $crud->set_relation('nu_user','eg_users','{nombre} {paterno} {materno}');
      $crud->display_as('nu_user','Usuario');

      $config = array(

    		/* Destination directory */
    		"path_to_directory"       =>'assets/grocery_crud_multiuploader/GC_uploads/pictures/',

    		/* Allowed upload type */
    		"allowed_types"           =>'gif|jpeg|jpg|png',

    		/* Show allowed file types while editing ? */
    		"show_allowed_types"      => false,

    		/* No file text */
    		"no_file_text"            =>'No Pictures',

    		/* enable full path or not for anchor during list state */
    		"enable_full_path"        => false,

    		/* Download button will appear during read state */
    		"enable_download_button"  => true,

    		/* One can restrict this button for specific types...*/
    		"download_allowed"        => 'gif|jpeg|jpg|png'
    	 );
    	$crud->new_multi_upload("images",$config);

      $output = $crud->render();

      $this->cargar_vistas($output);

    }catch(Exception $e){
      show_error($e->getMessage().' --- '.$e->getTraceAsString());
    }
  }


}
