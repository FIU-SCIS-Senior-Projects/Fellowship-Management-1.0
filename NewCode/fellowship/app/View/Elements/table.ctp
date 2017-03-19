<?php 
    $isUserAllowed = false;

    $isUserAllowed = !!$isUserAllowed ? $isUserAllowed : AuthComponent::user('role_id') == "1";
?>

<table class="slds-table slds-table--bordered slds-table--fixed-layout" role="grid" id="<?php echo __($tableId) ?>" >
    <thead>
        <tr class="slds-text-title--caps">
            <?php foreach ($headerCols as $headerCell): ?>
                <th class="slds-is-sortable slds-text-title--caps" scope="col"><?php echo __($headerCell); ?></th>
            <?php endforeach; ?>

            <?php if (AuthComponent::user() && $isUserAllowed) : ?>
                <th scope="col" class="actions"><?php echo __('Actions'); ?></th>
            <?php endif; ?>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($rows as $rowCols): ?>
            <tr>
                <?php foreach($rowCols as $rowCell) :?>
                    <?php if (count($rowCell) > 1) :?>
                        <?php if (AuthComponent::user() && $isUserAllowed) : ?>
                            <td class="actions">
                                <?php foreach ($rowCell as $item): ?>
                                    <?php echo $item; ?>
                                <?php endforeach; ?>
                            </td>
                        <?php endif; ?>
                    <?php else :?>
                        <td class="slds-truncate">
                            <?php echo __($rowCell); ?>
                        </td>
                    <?php endif;?>
                    
                <?php endforeach; ?>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
