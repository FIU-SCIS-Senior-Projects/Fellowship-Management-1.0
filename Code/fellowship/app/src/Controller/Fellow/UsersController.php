<?php
// src/Controller/Fellow/UserssController.php

namespace App\Controller\Fellow;

use App\Controller\AppController;
use Cake\Event\Event;

class UsersController extends AppController
{
	public function initialize()
    {
        parent::initialize();
	}

    public function beforeFilter(Event $event)
    {

        parent::beforeFilter($event);
        // Allow users to register and logout.
        // You should not add the "login" action to allow list. Doing so would
        // cause problems with normal functioning of AuthComponent.
        $this->Auth->allow(['']);
		$this->Auth->deny(['index', 'view', 'edit', 'delete']);
    }
	
	public function isAuthorized($user)
	{
		
		if ($this->Auth->user('role')==='fellow' &&
			$this->request->action === 'index') {
			return true;
		}
		
		/*
		The owner of a profile can edit, 
		delete, and add only his/her account
		*/
		if (in_array($this->request->action, ['view', 'edit', 'delete']))
		{
			$editId = (int)$this->request->params['pass'][0];
			if ($editId == $user['id']) {
				return true;
			}else{
				return false;
			}
		}
		return parent::isAuthorized($user);
	}

    public function index()
    {
		return $this->redirect(['prefix'=>'fellow', 'controller'=>'Fellowships', 'action' => 'index']);
    }

	//Not used in website, but in case it is needed in
	//the future then it is here.
    public function view($id)
    {
        $user = $this->Users->get($id);
        $this->set(compact('user'));
    }
	
	public function edit($id = null)
	{
		$user = $this->Users->get($id);
		if ($this->request->is(['post', 'put'])) {
			$this->Users->patchEntity($user, $this->request->data);
			if ($this->Users->save($user)) {
				//$this->Auth->login($this->User->read());
				$this->Flash->success(__('Your profile has been updated.'));
				return $this->redirect(['prefix'=>'fellow', 'controller'=>'Fellowships', 'action' => 'index']);
			}
			$this->Flash->error(__('Unable to update the user.'));
		}

		$this->set('user', $user);
	}
	
	//Not used in website, but in case it is needed in
	//the future then it is here.
	public function delete($id)
	{
		//$this->request->allowMethod(['post', 'delete']);

		$user = $this->Users->get($id);
		if ($this->Users->delete($user)) {
			$this->Flash->success(__('The user with id: {0} has been deleted.', h($id)));
			return $this->redirect(['action' => 'index']);
		}
	}

}



?>