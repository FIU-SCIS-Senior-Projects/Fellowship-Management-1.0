<?php 
	$title = __('Add User');
	$buttons = array(
			$this->Form->button('Save', array("class" => "slds-button slds-button--neutral", "id" => "btnSave", "onclick" => "submitForm()")),
			$this->Html->link(__("Cancel"), array('action' => 'index'), array("class" => "slds-button slds-button--neutral", "id" => "btnCancel"))
		);
?>

<div class="users form">
	
	<?php echo $this->element('page_header', array("title" => $title, 'buttons' => $buttons, 'escape' => false)); ?>

	<?php echo $this->Form->create('User', array("class" => "form-horizontal", "role" => "form")); ?>

	<div class="row">
		<div class="col-md-4">
			<?php echo $this->Form->input('first_name', array("class" => "slds-input", 
				"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
		<div class="col-md-4">
			<?php echo $this->Form->input('last_name', array("class" => "slds-input", 
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
		<div class="col-md-4">
			<?php echo $this->Form->input('gpa', array("class" => "slds-input", "type"=>"number", "step"=>"0.01", "min"=>"2.0", "max"=>"4.0",
				"div" => array("class" => "slds-form-element__control"), "label" => array("class" => "slds-form-element__label", "text"=> "GPA"))); ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
				<?php echo $this->Form->input('username', array("class" => "slds-input", 
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
		<div class="col-md-4">
			<?php echo $this->Form->input('password', array("class" => "slds-input", 
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
		<div class="col-md-4">
			<?php echo $this->Form->input('role_id', array("class" => "slds-select", 
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<?php echo $this->Form->input('address', array("class" => "slds-textarea", "rows" => 5,
				"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
	</div>
</div>

<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('List Users'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Fellowships'), array('controller' => 'fellowships', 'action' => 'index')); ?> </li>
	</ul>
</div>

<script>
	function submitForm(){
		$('form#UserAddForm').submit();
	}
</script>
