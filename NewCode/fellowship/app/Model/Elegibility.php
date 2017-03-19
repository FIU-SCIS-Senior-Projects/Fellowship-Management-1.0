<?php
App::uses('AppModel', 'Model');
/**
 * Elegibility Model
 *
 * @property Fellowship $Fellowship
 */
class Elegibility extends AppModel {


	// The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * hasMany associations
 *
 * @var array
 */
	public $hasMany = array(
		'Fellowship' => array(
			'className' => 'Fellowship',
			'foreignKey' => 'elegibility_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		)
	);

}
