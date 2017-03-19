<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Please Register</h3>
                </div>
                <div class="panel-body">
                    <?php echo $this->Form->create('User', array("class" => "form-horizontal", "role" => "form")); ?>
                        <?php $roles["id"] = 3?>
                        <fieldset>
                            <div class="form-group">
                                <?php echo $this->Form->input('first_name', array("class" => "slds-input", 
                                    "div" => array("class" => "slds-form-element__control"),'label' => false, 'placeholder'=>'First Name', 'autofocus')); ?>
                            </div>
                            <div class="form-group">
                                <?php echo $this->Form->input('last_name', array("class" => "slds-input", 
                                    "div" => array("class" => "slds-form-element__control"),'label' => false, 'placeholder'=>'Last Name')); ?>
                            </div>
                            <div class="form-group">
                                <?php echo $this->Form->input('username', array("class" => "slds-input", 
                                    "div" => array("class" => "slds-form-element__control"),'label' => false, 'placeholder'=>'Username')); ?>
                            </div>
                            <div class="form-group">
                                <?php echo $this->Form->input('password', array("class" => "slds-input", 
                                    "div" => array("class" => "slds-form-element__control"),'label' => false, 'placeholder'=>'Password')); ?>
                            </div>
                        </fieldset>
                    <?= $this->Form->end(__('Register'), array('class'=>'btn btn-lg btn-success btn-block')) ?>
                </div>
            </div>
        </div>
    </div>
</div>