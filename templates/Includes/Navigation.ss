
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<% control Menu(1) %>	  
						<li class="$LinkingMode $FirstLast"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
					<% end_control %>
				</ul>
				<% if Translations %>
					<ul class="nav pull-right">
						<li class="dropdown">
							<a href="#"
										class="dropdown-toggle"
										data-toggle="dropdown">
										$Locale.Nice
										<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<% control Translations %>
									<li class="$Locale.RFC1766"><a href="$Link">$Locale.Nice</a></li>
								<% end_control %>								    
							</ul>
						</li>
					</ul>							
				<% end_if %>
			</div><!--/.nav-collapse -->
		</div>
	</div>
</div>