Login Nav Bar
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">

          <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Account<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <% if user_signed_in? %>
					  <li>
					  <%= link_to('Logout', destroy_user_session_path, :method => :delete) %>        
					  </li>
					<% else %>
					  <li>
					  <%= link_to('Login', new_user_session_path) %>  
					  </li>
					  <li>
					  	<%= link_to 'Admin?', admin_root_path %>
					  </li>	
					<% end %>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->


    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">NYHH</a>
    </div>