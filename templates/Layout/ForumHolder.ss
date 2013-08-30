
<div class="page-header">
	<h1>$Title.RAW</h1>
</div>
<div class="row">
  <div class="span12 typography">

		<% include ForumHeader %>
			<div class="forumHolderFeatures">
				<table id="TopicOverview" class="topicList">
					<% if GlobalAnnouncements %>
						<tr class="category"><td colspan="4"><% _t('ANNOUNCEMENTS', 'Announcements') %></td></tr>
						<% loop GlobalAnnouncements %>
							<% include ForumHolder_List %>
						<% end_loop %>
					<% end_if %>
					<% if ShowInCategories %>
						<% loop Forums %>
							<tr class="category"><td colspan="4">$Title</td></tr>
							<tr>
								<th class="odd"><% if Count = 1 %><% _t('FORUM','Forum') %><% else %><% _t('FORUMS', 'Forums') %><% end_if %></th>
								<th class="even"><% _t('THREADS','Threads') %></th>
								<th class="odd"><% _t('POSTS','Posts') %></th>
								<th class="even"><% _t('LASTPOST','Last Post') %></th>
							</tr>
							<% loop CategoryForums %>
								<% include ForumHolder_List %>
							<% end_loop %>
						<% end_loop %>
					<% else %>
						<tr>
							<th class="odd"><% _t('FORUM','Forum') %></th>
							<th class="even"><% _t('THREADS','Threads') %></th>
							<th class="odd"><% _t('POSTS','Posts') %></th>
							<th class="even"><% _t('LASTPOST','Last Post') %></th>
						</tr>
						<% loop Forums %>
							<% include ForumHolder_List %>
						<% end_loop %>
					<% end_if %>
				</table>
			</div>
		<% include ForumFooter %>



  </div>
</div>



