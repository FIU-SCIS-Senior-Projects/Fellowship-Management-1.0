<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @since         1.2.0
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
namespace App\Test\TestCase\Controller;

use App\Controller\FellowshipsController;
use Cake\Core\App;
use Cake\Core\Configure;
use Cake\Network\Request;
use Cake\Network\Response;
use Cake\TestSuite\IntegrationTestCase;
use Cake\View\Exception\MissingTemplateException;

/**
 * FellowshipsControllerTest class
 */
class FellowshipsControllerTest extends IntegrationTestCase
{
    /**
     * testMultipleGet method
     *
     * @return void
     */
    public function testMultipleGet()
    {
        $this->get('/');
        $this->assertResponseOk();
    }

    /**
     * testDisplay method
     *
     * @return void
     */
    public function testDisplay()
    {
        $this->get('/fellowships');
        $this->assertResponseOk();
        $this->assertResponseContains('Home');
        $this->assertResponseContains('<html>');
		$this->assertResponseContains('Donald Trump');
    }
	
	 /**
     * testEntryFromDb method
     *
     * @return void
     */
    public function testEntryFromDb()
    {
        $this->get('/fellowships');
        $this->assertResponseOk();
        $this->assertResponseContains('Donald Trump Fellowship');
        $this->assertResponseContains('NYU Partnership with FIU Fellowship');
    }

    /**
     * Test that missing template renders 404 page in production
     *
     * @return void
     */
    public function testMissingTemplate()
    {
        Configure::write('debug', false);
        $this->get('/pages/not_existing');

        $this->assertResponseError();
        $this->assertResponseContains('Error');
    }

    /**
     * Test that missing template in debug mode renders missing_template error page
     *
     * @return void
     */
    public function testMissingControllerInDebug()
    {
        Configure::write('debug', true);
        $this->get('/pages/not_existing');

        //$this->assertResponseFailure();
        $this->assertResponseContains('Missing Controller');
        $this->assertResponseContains('AppController');
    }
	
	/*
		Test case ID: 138
	*/
	public function testAddFellowshipPageLoadID138()
    {
		/*
        $this->post('/fellowship/app/users/login',
					array('username'=>'w',
					      'password'=>'w',
						  '_method'=>'POST')
		);
        $this->assertResponseContains('Users List');
		$this->get('/admins/fellowships/add');
        $this->assertResponseContains('Add Fellowship');
		*/
		// Set session data
		$this->session([
			'Auth' => [
				'User' => [
					'id' => 1,
					'username' => 'w',
					// other keys.
				]
			]
		]);
		$this->get('/admins/fellowships/add');

		$this->assertResponseOk();
		$this->assertResponseContains('Add Fellowship');
		// Other assertions.
    }
	
	/*
		Test case ID: 139
	*/
	public function testEditFellowshipPageLoadID139()
    {
		// Set session data
		$this->session([
			'Auth' => [
				'User' => [
					'id' => 1,
					'username' => 'w',
					'_method'=>'GET'
				]
			]
		]);
		$this->get('/admins/fellowships/edit/5');

		$this->assertResponseOk();
		$this->assertResponseContains('Update Fellowship');
		// Other assertions.
    }

    /**
     * Test directory traversal protection
     *
     * @return void
     */
	 /*
    public function testDirectoryTraversalProtection()
    {
        $this->get('/pages/../Layout/ajax');
        $this->assertResponseCode(403);
        $this->assertResponseContains('Forbidden');
    }
	*/
}
