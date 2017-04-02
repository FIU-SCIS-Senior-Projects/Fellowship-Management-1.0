<!-- File: src/Template/Fellowships/index.ctp -->
<?= $this->Flash->render('auth') ?>
<h1>Fellowship Database</h1>
<div class="panel panel-default">
    
    <!-- /.panel-heading -->
    <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Title</th>
                    <th>Created</th>
					<?php
					if(isset($cred['role']) && $cred['role']==='admin'){
						echo '<th>Action</th>';
					}
					?>
                </tr>
            </thead>
            <tbody>
            <?php foreach ($articles as $article): ?>
                <tr>
                    <td><?= $article->id ?></td>
                    <td>
                        <?= $this->Html->link($article->title, ['action' => 'view', $article->id]) ?>
                    </td>
                    <td>
                        <?= $article->created->format(DATE_RFC850) ?>
                    </td>
				<?php
				if(isset($cred['role']) && $cred['role']==='admin'){
                    echo '<td>';
                    echo $this->Form->postLink(
                            'Delete',
                            ['prefix'=> 'admins', 'action' => 'delete', $article->id],
                            ['confirm' => 'Are you sure?']);
                        
                    echo ' ';
					echo $this->Html->link('Edit',
						['prefix'=> 'admins', 'action' => 'edit', $article->id]);
                    echo '</td>';
				}
				?>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
        <!-- /.table-responsive -->
    </div>
    <!-- /.panel-body -->
</div>

<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable().destroy();
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>