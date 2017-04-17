<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <div class="logo">
            <a href="http://gradschool.fiu.edu/"><img src="http://gradschool.fiu.edu/images/logo1.png" alt="fiu"></a>
        </div>
    </div>

    <ul class="nav navbar-top-links navbar-right" style="margin-top: 10px;">
        <?php if (AuthComponent::user()) : ?>
            <li><?=  $this->Html->link('Home', 'index',['style'=>'vertical-align: middle;', 'target'=>'_self', "class"=>"navbar-items"]);?></li>
            <li class="dropdown" style="margin: none;">
                <a class="dropdown-toggle navbar-items" data-toggle="dropdown" href="#">
                        <?php echo '<span>'.AuthComponent::user("first_name").' '. AuthComponent::user("last_name").'</span>'; ?>
                </a>
                <ul class="dropdown-menu" >
                    <li><?php echo$this->Html->link("Profile", array("controller" => "users", 'action' => 'profile', AuthComponent::user("id"))) ?></li>
                    <li><a href="/Users/logout">Log Out</a></li>
                </ul>
            </li>
        <?php else : ?>
            <li><a href="/Users/login">Log In</a></li>
        <?php endif; ?>
    </ul>
</nav>

