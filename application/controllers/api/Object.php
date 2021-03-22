<?php

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

/**
 * Class Object
 */
class Object extends REST_Controller {

	/**
	 * Object constructor.
	 */
	public function __construct() {

		parent::__construct();

		$this->load->database();
		$this->load->helper('date');
		$this->load->model('Objects_Model');
		$this->objects_model = new Objects_Model;

	}

	/**
	 * To get data by key (or/and timestamp).
	 *
	 * @return mixed
	 */
	public function index_get() {
		$key = $this->uri->segment('3');
		$timestamp = $this->get('timestamp');

		// If value not found in main table, then go to logger find given timestamp less than 1 record if found then return

		if (!empty($key)) {
			$object = $this->objects_model->find_by_key($key);

			if (!empty($timestamp)) {
				$object = $this->objects_model->find_by_key_timestamp($key, $timestamp);
			}

			$value = (isset($object)) ? $object->value : "";

			return $this->output
				->set_status_header(REST_Controller::HTTP_OK)
				->set_output($value);

		}
	}

	/**
	 * To save data.
	 * If key is already exists, then it will update it's value, otherwise it will insert key, value pair.
	 *
	 * @return mixed
	 */
	public function index_post() {
		if ($this->post() && count($this->post()) == 1) {
			$key = key($this->post());
			$value = array_values($this->post())[0];

			$format = '%g.%i %a';

			// Validate the post data
			if ( ! empty($key) && ! empty($value)) {
				$object_exists = $this->objects_model->find_by_key($key);
				if (isset($object_exists)) {
					if ($value != $object_exists->value) { // If Current Value and Old Value not Same then only update.
						$object = $this->objects_model->update_object($object_exists->id, $key, $value);
					}
					else {
						$object = $object_exists->timestamp;
					}
				}
				else {
					$object = $this->objects_model->insert_object($key, $value);
				}

				$timestamp = mdate($format,strtotime($object));

				return $this->output
					->set_status_header(REST_Controller::HTTP_OK)
					->set_output($timestamp);
			}
			else {
				$this->response("Key and Value required.", REST_Controller::HTTP_BAD_REQUEST);
			}
		}
		else {
			$this->response('Invalid data. Please provide data in JSON format key, value pair.', REST_Controller::HTTP_BAD_REQUEST);
		}
	}

	/**
	 * To get all data.
	 */
	public function get_all_records_get() {
		$get_all_objects = $this->objects_model->get_all_objects();

		if ($get_all_objects) {
			$this->response($get_all_objects, REST_Controller::HTTP_OK);
		}
		else {
			$this->response(array("No data."), REST_Controller::HTTP_BAD_REQUEST);
		}
	}
}
