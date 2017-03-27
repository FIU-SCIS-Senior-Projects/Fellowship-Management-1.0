<!-- File: src/Template/Admin/Users/index.ctp -->

<h1>Users List</h1>
<?= $this->Html->link('Add User', ['action' => 'add']) ?>
<table>
    <tr>
        <th>Id</th>
		<th><?= $this->Paginator->sort('role', 'Role');?></th>
        <th><?= $this->Paginator->sort('username', 'Username');?></th>
		<th><?= $this->Paginator->sort('gpa', 'GPA');?></th>
        <th>Created</th>
		<th>Action</th>
    </tr>

    <!-- Here is where we iterate through our $users query object, printing out user info -->

    <?php foreach ($users as $user): ?>
    <tr>
        <td><?= $user->id ?></td>
		<td><?= $user->role ?></td>
        <td>
            <?= $this->Html->link($user->username, ['action' => 'view', $user->id]) ?>
        </td>
		<td>
		<?= $user->gpa ?>
		</td>
        <td>
            <?= $user->created->format(DATE_RFC850) ?>
        </td>
		<td>
			<?= $this->Form->postLink(
                'Delete',
                ['action' => 'delete', $user->id],
                ['confirm' => 'Are you sure?'])
            ?>
            <?= $this->Html->link('Edit', ['action' => 'edit', $user->id]) ?>
        </td>
    </tr>
    <?php endforeach; ?>
</table>
<?php


echo $this->Paginator->prev(' << ' . __('previous'));
echo $this->Paginator->numbers();

echo $this->Paginator->next(__('next') . ' >> ');
echo $this->Paginator->counter(
    'Page {{page}} of {{pages}}, showing {{current}} records out of
     {{count}} total, starting on record {{start}}, ending on {{end}}'
);

?>