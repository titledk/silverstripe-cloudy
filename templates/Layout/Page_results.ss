
<div class="page-header">
	<h1>$Title.RAW</h1>
</div>
<div class="row">
	<div class="span3">
		<% include Sidebar %>
	</div>
	<div class="span9 typography">
		<% if Results %>
				<% control Results %>
					<div class="item">
						<h2><% if MenuTitle %>$MenuTitle<% else %>$Title<% end_if %></h2>
						<% if Content %>
							$Content.Summary(50)
						<% end_if %>
						<a class="readMoreLink" href="$Link" title="Read more">Read more</a>
					</div>
					<br />
				<% end_control %>
		<% else %>
			<p>
				<%-- Example of a translatable string (see http://doc.silverstripe.org/i18n) --%>
				<% _t("Page_results.ss.NORESULTS", "Sorry, your search query did not return any results.") %>
				<%-- By the way, template comments marked like this will be excluded from the HTML output --%>
			</p>
		<% end_if %>
		<% if Results.MoreThanOnePage %>
			<div id="PageNumbers">
				<% if Results.NotLastPage %>
					<a class="next" href="$Results.NextLink" title="View the next page">Next</a>
				<% end_if %>
				<% if Results.NotFirstPage %>
					<a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
				<% end_if %>
				<span>
					<% control Results.SummaryPagination(5) %>
						<% if CurrentBool %>
							$PageNum
						<% else %>
							<a href="$Link" title="View page number $PageNum">$PageNum</a>
						<% end_if %>
					<% end_control %>
				</span>
			</div>
		<% end_if %>
	</div>
</div>