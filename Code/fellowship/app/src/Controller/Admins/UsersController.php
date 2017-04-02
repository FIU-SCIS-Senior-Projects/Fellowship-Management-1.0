<?php
// src/Controller/Admins/UsersController.php

namespace App\Controller\Admins;

use App\Controller\AppController;
use Cake\Event\Event;

use Cake\ORM\TableRegistry;
use Cake\Datasource\ConnectionManager;

class UsersController extends AppController
{
	public $paginate = [
        'limit' => 10
    ];
	
	public function initialize()
    {
        parent::initialize();
        $this->loadComponent('Paginator');
    }
	
    public function beforeFilter(Event $event)
    {

        parent::beforeFilter($event);

        $this->Auth->allow([]);
		$this->Auth->deny(['index', 'view', 'add', 'edit', 'delete']);
    }

    public function logout()
    {
        return $this->redirect($this->Auth->logout());
    }
	
	public function isAuthorized($user)
	{
		
		if($this->Auth->user('role')==='admin'){
			return true;
		}else if($this->Auth->user('role')==='fellow'){
			return false;
		} else{
			return false;
		}

		return parent::isAuthorized($user);
	}

    public function index()
    {
		$users_list = $this->Users->find('all',
			array('order'=>array('Users.role'))
		);
        $this->set('users', $this->paginate($users_list));
    }

    public function view($id)
    {
        $user = $this->Users->get($id);
        $this->set(compact('user'));
    }
	

    public function add()
    {
        $user = $this->Users->newEntity();
        if ($this->request->is('post')) {
            $user = $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));
                return $this->redirect(['action' => 'add']);
            }
            $this->Flash->error(__('Unable to add the user.'));
        }
        $this->set('admin', $user);
    }
	
	public function edit($id = null)
	{
		$user = $this->Users->get($id);
		if ($this->request->is(['post', 'put'])) {
			$this->Users->patchEntity($user, $this->request->data);
			if ($this->Users->save($user)) {
				$this->Flash->success(__('The user has been updated.'));
				return $this->redirect(['action' => 'index']);
			}
			$this->Flash->error(__('Unable to update the user.'));
		}

		$this->set('user', $user);
		
		$conn = ConnectionManager::get('default');
		$stmt = $conn->execute('SELECT * FROM fellowships AS f
								INNER JOIN (SELECT id as uf_id, 
								user_id as uf_u_id, fellowship_id as uf_f_id 
								FROM users_fellowships) uf ON (
								  f.id = uf.uf_f_id
								  AND uf.uf_u_id=?
								)', [$id]);
								//IN (SELECT id FROM users WHERE)
		$articles = $stmt->fetchAll('assoc');
		$this->set(compact('articles'));
	}
		
	public function delete($id)
	{

		$user = $this->Users->get($id);
		if ($this->Users->delete($user)) {
			$this->Flash->success(__('The user with id: {0} has been deleted.', h($id)));
			return $this->redirect(['action' => 'index']);
		}
	}

}



?>