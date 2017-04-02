<!-- src/Template/Admins/add.ctp -->

<div class="users form">
<?= $this->Form->create($admin) ?>
    <fieldset>
        <legend><?= __('Add Admin') ?></legend>
        <?= $this->Form->input('username') ?>
        <?= $this->Form->input('password') ?>
		<?= $this->Form->input('gpa',
			['type'=>'number',
			'step'=>'0.01',
			'min'=>'2.0',
			'max'=>'4.0']) ?>
        <?= $this->Form->input('role', [
            'options' => ['admin' => 'Admin', 'fellow' => 'Fellow']
        ]) ?>
   </fieldset>
<?= $this->Form->button(__('Submit')); ?>
<?= $this->Form->end() ?>
</div>