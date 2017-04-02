<!-- File: src/Template/Fellow/Users/edit.ctp -->

<h1>Update Profile</h1>
<?php
    echo $this->Form->create($user);
    echo $this->Form->input('username');
    echo $this->Form->input('password');
	echo $this->Form->input('gpa',
			['type'=>'number',
			'step'=>'0.01',
			'min'=>'2.0',
			'max'=>'4.0']);
    echo $this->Form->button(__('Update Profile'));
    echo $this->Form->end();
?>