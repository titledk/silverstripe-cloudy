
<% if CurrentMember %>
	<% control CurrentMember %>
		<span>You're logged in as $FirstName $Surname</span>
		<span>|</span>
		<a href="/admin/myprofile" target="_blank"><span class="icon">U </span><span class="text">Edit profile</span></a> 
		<span>|</span> 
		<a href="/admin" target="_blank"><span class="icon">S </span><span class="text">Admin</span></a>
		<span>|</span>
		<a href="/Security/logout"><span class="icon">X </span><span class="text">Log out</span></a>
	<% end_control %>
<% end_if %>