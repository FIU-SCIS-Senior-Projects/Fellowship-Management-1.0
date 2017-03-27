<!-- src/Template/Users/add.ctp -->

<div class="users form">
<?= $this->Form->create($user) ?>
    <fieldset>
        <legend><?= __('Add User') ?></legend>
        <?= $this->Form->input('username') ?>
        <?= $this->Form->input('password') ?>
		<?= $this->Form->input('gpa',
			['type'=>'number',
			'step'=>'0.01',
			'min'=>'2.0',
			'max'=>'4.0']) ?>
        <?= $this->Form->input('role', [
            'options' => ['fellow' => 'Fellow', 'admin' => 'Admin']
        ]) ?>
   </fieldset>
<?= $this->Form->button(__('Submit')); ?>
<?= $this->Form->end() ?>
</div>