<?php

// src/Controller/UsersController.php

namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

class UsersController extends AppController
{

    public function beforeFilter(Event $event)
    {

        parent::beforeFilter($event);
        // Allow users to register and logout.
        // You should not add the "login" action to allow list. Doing so would
        // cause problems with normal functioning of AuthComponent.
        $this->Auth->allow(['add', 'logout']);
    }
	public function login()
    {
        if ($this->request->is('post')) {
            $user = $this->Auth->identify();
			
			if($user){
				$this->Auth->setUser($user);
				switch($this->Auth->user('role')){
					case 'admin':
						return $this->redirect(array('controller'=>'users','action'=>'index','prefix'=>'admins'));
						break;
					case 'fellow':
						return $this->redirect(array('controller'=>'fellowships','action'=>'index','prefix'=>'fellow'));
						break;
				}
			}

            $this->Flash->error(__('Invalid username or password, try again'));
        }
    }

    public function logout()
    {
        return $this->redirect($this->Auth->logout());
    }

    public function index()
     {
        $this->set('users', $this->Users->find('all'));
    }
/* Commented out on 3-31-2017
    public function view($id)
    {
        $user = $this->Users->get($id);
        $this->set(compact('user'));
    }
*/
    public function add()
    {
        $user = $this->Users->newEntity();
        if ($this->request->is('post')) {
            $user = $this->Users->patchEntity($user, $this->request->data);
			$user->role = 'fellow';
            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));
				return $this->login();
                //return $this->redirect(['action' => 'add']);
            }
            $this->Flash->error(__('Unable to add the user.'));
        }
        $this->set('user', $user);
    }

}



?>