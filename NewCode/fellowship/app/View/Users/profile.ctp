<?php 
	$userLink = "";
	$title = h($user['User']['first_name'] .' '. $user['User']['last_name']);
	$buttons = array(
			$this->Form->button('Save', array("class" => "slds-button slds-button--neutral", "id" => "btnSave", "onclick" => "submitForm()")),
			$this->Html->link(__("Cancel"), array('action' => 'view', $user['User']['id']), array("class" => "slds-button slds-button--neutral", "id" => "btnCancel"))
		);
?>

<div class="users form">
	
	<legend><?php echo __('My Profile'); ?></legend>
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
		<div class="col-md-12">
				<?php echo $this->Form->input('address', array("class" => "slds-textarea", "rows" => 5,
					"div" => array("class" => "slds-form-element__control"),"label" => array("class" => "slds-form-element__label"))); ?>
		</div>
	</div>
</div>


<script>
	function submitForm(){
		$('form#UserProfileForm').submit();
	}
</script>
