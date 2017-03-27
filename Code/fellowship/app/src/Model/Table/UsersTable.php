<?php
// src/Model/Table/UsersTable.php
namespace App\Model\Table;

use Cake\ORM\Table;
use Cake\Validation\Validator;
use Cake\ORM\RulesChecker;
use Cake\ORM\Rule\IsUnique;
class UsersTable extends Table
{
	public function initialize(array $config)
    {
        $this->belongsToMany('Fellowships', [
            'joinTable' => 'users_fellowships',
        ]);
    }
	
    public function validationDefault(Validator $validator)
    {
        return $validator
            ->notEmpty('username', 'A username is required')
            ->notEmpty('password', 'A password is required')
			->greaterThanOrEqual('gpa', 2.0, 'Please enter a GPA between 2.0 and 4.0')
			->lessThanOrEqual('gpa', 4.0, 'Please enter a GPA between 2.0 and 4.0')
			
            ->notEmpty('role', 'A role is required')
            ->add('role', 'inList', [
                'rule' => ['inList', ['fellow', 'admin']],
                'message' => 'Please enter a valid role'
            ]);
    }
	
	public function buildRules(RulesChecker $rules)
	{
		// A list of fields
		$rules->add($rules->isUnique(
			['username'],
			'This username has already been used.'
		));
		

		return $rules;
	}

}
?>