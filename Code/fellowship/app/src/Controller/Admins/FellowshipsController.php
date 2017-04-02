<?php
// src/Controller/Admins/FellowshipsController.php

namespace App\Controller\Admins;

use App\Controller\AppController;
use Cake\Event\Event;

class FellowshipsController extends AppController
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
        $this->Auth->allow([]);
		$this->Auth->deny(['index', 'view', 'add', 'edit', 'delete']);
    }

    public function index()
    {
        $articles = $this->Fellowships->find('all');
        $this->set(compact('articles'));
    }
	
	public function view($id = null)
    {
        $article = $this->Fellowships->get($id);
        $this->set(compact('article'));
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
	
	public function add()
    {
		$article = $this->Fellowships->newEntity();
		if ($this->request->is('post')) {
			$article = $this->Fellowships->patchEntity($article, $this->request->data);
			// Added this line
			$article->user_id = $this->Auth->user('id');
			// You could also do the following
			//$newData = ['user_id' => $this->Auth->user('id')];
			//$article = $this->Fellowships->patchEntity($article, $newData);
			if ($this->Fellowships->save($article)) {
				$this->Flash->success(__('The fellowship has been saved.'));
				return $this->redirect(['action' => 'index']);
			}
			$this->Flash->error(__('Unable to add your fellowship.'));
		}
		$this->set('article', $article);

		// Just added the categories list to be able to choose
		// one category for an article
		//$categories = $this->Fellowships->Categories->find('treeList');
		//$this->set(compact('categories'));
    }
	
	public function edit($id = null)
	{
		$article = $this->Fellowships->get($id);
		if ($this->request->is(['post', 'put'])) {
			$this->Fellowships->patchEntity($article, $this->request->data);
			if ($this->Fellowships->save($article)) {
				$this->Flash->success(__('Your article has been updated.'));
				return $this->redirect(['action' => 'index']);
			}
			$this->Flash->error(__('Unable to update your article.'));
		}

		$this->set('article', $article);
	}
	
	public function delete($id)
	{

		$article = $this->Fellowships->get($id);
		if ($this->Fellowships->delete($article)) {
			$this->Flash->success(__('The article with id: {0} has been deleted.', h($id)));
			return $this->redirect(['action' => 'index']);
		}
	}
}
?>