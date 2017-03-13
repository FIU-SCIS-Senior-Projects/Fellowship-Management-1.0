<?php 
	$userLink = $this->Html->link(__($user['User']['first_name'] .' '. $user['User']['last_name']), array('controller' => 'users', 'action' => 'view', $user['User']['id']));
	$title = h($user['User']['first_name'] .' '. $user['User']['last_name']);
	$buttons = array(
			$this->Form->button('Save', array("class" => "slds-button slds-button--neutral", "id" => "btnSave", "onclick" => "submitForm()")),
			$this->Html->link(__("Cancel"), array('action' => 'view', $user['User']['id']), array("class" => "slds-button slds-button--neutral", "id" => "btnCancel"))
		);
?>

<div class="users form">
	
	<legend><?php echo __('Edit User'); ?></legend>
	<?php echo $this->element('page_header', array('userLink' => $userLink, "title" => $title, 'buttons' => $buttons, 'escape' => false)); ?>

	<?php echo $this->Form->create('User', array("class" => "form-horizontal", "role" => "form")); ?>

	<?php echo $this->Form->input('id'); ?>

	<div class="row">
		<div class="col-md-6">
				<?php echo $this->Form->input('first_name', array("class" => "slds-input", 
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
		<div class="col-md-6">
			<?php echo $this->Form->input('last_name', array("class" => "slds-input", 
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
				<?php echo $this->Form->input('username', array("class" => "slds-input", 
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
		<div class="col-md-6">
			<?php echo $this->Form->input('password', array("class" => "slds-input", 
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
	</div>
	<div class="row">
		<!--<div class="col-md-6">
				<?php echo $this->Form->input('Fellowship', array("class" => "slds-textarea", 
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>-->
		
		

		<div class="col-md-6">
			<?php echo $this->Form->input('role_id', array("class" => "slds-select", AuthComponent::user("role_id") == 1 ? "" :  "disabled" ,
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
	</div>
</div>

<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('User.id')), 
			array('confirm' => __('Are you sure you want to delete # %s?', $this->Form->value('User.id')))); ?></li>
		<li><?php echo $this->Html->link(__('List Fellowships'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Degrees'), array('controller' => 'degrees', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Degree'), array('controller' => 'degrees', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Disciplines'), array('controller' => 'disciplines', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Discipline'), array('controller' => 'disciplines', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Elegibilities'), array('controller' => 'elegibilities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Elegibility'), array('controller' => 'elegibilities', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
	</ul>
</div>

<script>
	function submitForm(){
		$('form#UserEditForm').submit();
	}
</script>
