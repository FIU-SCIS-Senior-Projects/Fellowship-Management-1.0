<?php
// src/Model/Table/Users_FellowShipsTable.php

namespace App\Model\Table;

use Cake\ORM\Table;

class UsersFellowshipsTable extends Table
{
	public function initialize(array $config)
    {
        $this->table('users_fellowships');
    }
	public function isOwnedBy($fId, $userId)
	{
		return $this->exists(['id' => $fId, 'user_id' => $userId]);
	}
}
?>