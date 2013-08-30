
<div id="Sidebar">

	<% if Menu(2) %>	
		<div class="content well" style="padding: 8px 0;">
			<ul class="nav nav-list">
			
			<% loop Level(1) %>
				<li class="$LinkingMode">
					<a href="$Link">
						<i class="icon-home <% if LinkingMode == "current" %>icon-white<% end_if %>"></i>
						$MenuTitle.XML
					</a>
				</li>
			<% end_loop %>			

			<% loop Menu(2) %>	  
				<li class="$LinkingMode">
					<a href="$Link">
						<i class="icon-file <% if LinkingMode == "current" %>icon-white<% end_if %>"></i>
						$MenuTitle.XML
					</a>
				</li>
			<% end_loop %>
			</ul>
		</div>
	<% end_if %>


	<blockquote>
	  <p>Software built on pride and love of subject is superior to software built for profit.</p>
	  <small>Ravi  Simhambhatla, CIO, Virgin America</small>
	</blockquote>


	<%-- Enable Social Buttons here --%>
	<%-- include SocialButtons --%>


 </div>