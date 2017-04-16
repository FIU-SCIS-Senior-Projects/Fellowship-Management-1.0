<?php 
    $isUserAllowed = false;
    $isUserAllowed = !!$isUserAllowed ? $isUserAllowed : AuthComponent::user('role_id') == "1";
?>

<div class="slds-page-header">
    <div class="slds-grid">
        <div class="slds-col slds-has-flexi-truncate">
            <div class="slds-media">
                <div class="slds-media__figure">
                </div>
                <div class="slds-media__body">
                    <div class="slds-grid">
                        <h1 class="slds-text-heading--medium slds-m-right--small slds-truncate slds-align-middle" style="background-color: transparent;"> 
                            <?php echo $title ?> 
                        </h1>
                    </div>
                </div>
            </div>
        </div>
        <?php if (AuthComponent::user() && $isUserAllowed || $this->view === "profile") : ?>
            <div class="slds-col slds-no-flex slds-align-bottom">
                <div class="slds-button-group" role="group">
                    <?php echo implode($buttons) ?>
                </div>
            </div>
        <!--?php else :?>
            <div>
                <button type="button">Back</button>
            </div>    -->
        <?php endif;?>
    </div>
</div>
