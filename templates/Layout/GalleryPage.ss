
<div class="page-header">
	<h1>$Title.RAW</h1>
</div>
<div class="row">
  <div class="span3">
  	<% include Sidebar %>
  </div>
  <div class="span9 typography">
 
			<% if GalleryImages %>
			<ul id="Gallery">
			    <% loop GalleryImages %>
			        <li>
			            <a href="$OriginalURL" title="$Title">
			                <img src="$URL" alt="" />
			            </a>
			        </li>       
			    <% end_loop %>
			</ul>
			<% end_if %>

			<div class="clearfix">
 				$Content
 			</div>


  </div>
</div>