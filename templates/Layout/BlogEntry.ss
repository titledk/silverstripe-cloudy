
<div class="page-header">
	<h1>$Title.RAW</h1>
</div>
<div class="row">
  <div class="span3">
  	<% include BlogSideBar %>
  </div>
  <div id="BlogContent" class="span9 typography">
		<% include BreadCrumbs %>
		
		<div class="blogEntry">
			<h2 class="postTitle">$Title</h2>
			<p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long | $Comments.Count <% _t('COMMENTS', 'Comments') %></p>
			<% if TagsCollection %>
				<p class="tags">
					 <% _t('TAGS', 'Tags:') %> 
					<% control TagsCollection %>
						<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
					<% end_control %>
				</p>
			<% end_if %>
			
			$Content
			
		</div>
		
		<% if IsOwner %><p><a href="$EditURL" id="editpost" title="<% _t('EDITTHIS', 'Edit this post') %>"><% _t('EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>
		
		<% if TrackBacksEnabled %>
			<% include TrackBacks %>
		<% end_if %>
		$PageComments
  </div>
</div>
