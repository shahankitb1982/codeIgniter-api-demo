<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class Objects_Model
 */
class Objects_Model extends CI_Model {

	/**
	 * Get all Objects.
	 *
	 * @return mixed
	 */
	public function get_all_objects() {
		$this->db->order_by('timestamp', 'DESC');
		$query = $this->db->get("objects");

		return $query->result();
	}

	/**
	 * To insert object.
	 *
	 * @param $key
	 * @param $value
	 * @return string
	 */
	public function insert_object($key, $value) {
		$data = array(
			'key' => $key,
			'value' => $value
		);

		try {
			$result = $this->db->insert('objects', $data);
			$id = $this->db->insert_id();
			$object = $this->get_object_by_id($id);
			return $object->timestamp;
		}
		catch (Exception $e) {
			return $e->getMessage();
		}
	}

	/**
	 * To update object.
	 *
	 * @param $id
	 * @param $key
	 * @param $value
	 * @return mixed
	 */
	public function update_object($id, $key, $value) {

		$object_old = $this->get_object_by_id($id);
		$old_value = $object_old->value;

		$data_logger = array(
			'objects_id' => $id,
			'value' => $old_value
		);

		$this->db->insert('objects_logger', $data_logger);

		$data = array(
			'key' => $key,
			'value' => $value
		);

		$this->db->where('id', $id);
		$result = $this->db->update('objects', $data);
		if ($result) {
			$object = $this->get_object_by_id($id);
			return $object->timestamp;
		}
	}

	/**
	 * Get object by id.
	 *
	 * @param $id
	 * @return mixed
	 */
	public function get_object_by_id($id) {
		return $this->db->get_where('objects', array('id' => $id))->row();
	}

	/**
	 * Get object by key
	 *
	 * @param $key
	 * @return mixed
	 */
	public function find_by_key($key) {
		return $this->db->get_where('objects',array('key' => $key))->row();
	}

	/**
	 * Get key value by params.
	 *
	 * @param $key
	 * @param $timestamp
	 * @return mixed
	 */
	public function find_by_key_timestamp($key, $timestamp) {
		$this->db->select('value');
		$this->db->from('objects');
		$this->db->where('key', $key);
		$this->db->where('UNIX_TIMESTAMP(timestamp) <=', $timestamp);
		$query = $this->db->get()->row();

		// If  found value from `object` table then return.
		if (count($query) > 0) {
			return $query;
		}
		else {
			// Check data from `object_logger` table
			$this->db->select('*');
			$this->db->from('objects');
			$this->db->join('objects_logger', 'objects.id = objects_logger.objects_id');
			$this->db->where('objects.key', $key);
			$this->db->where('UNIX_TIMESTAMP(objects_logger.timestamp) <=', $timestamp);
			$this->db->order_by("objects_logger.id", "DESC");
			$this->db->limit(1);

			$query_logger = $this->db->get()->row();

			if (count($query_logger) > 0) {
				return $query_logger;
			}
		}
	}

}
