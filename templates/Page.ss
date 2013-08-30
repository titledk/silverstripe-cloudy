<!DOCTYPE html>
<html lang="en">
	<head>
		<% base_tag %>
		<title><% with SiteConfig %>$Title.RAW<% end_with %> - <% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %></title>
		$MetaTags(false)
		
		<%-- some iOS & mobile device tweaks --%>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
		<link rel="apple-touch-icon-precomposed" href="themes/cloudy/icons/apple-touch-icon.png" />

		<%-- favicon - you can replace this with your own --%>
		<link rel="shortcut icon" href="themes/cloudy/icons/favicon.ico" />

		<%-- We have loaded the color scheme "Green" - change "cloudy-green" to "cloudy-base" to load the base scheme --%>
		<% require themedCSS(cloudy-green) %>
		<link rel="stylesheet" media="print" href="themes/cloudy/css/print.css" />

		<%-- We are using the CDN hosted latest version of jQuery --%>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<%-- Minor JS enhancements --%>
		<script src="themes/cloudy/javascript/cloudy.js"></script>
		<%-- Bootstrap JS files - take only what you really need, and keep the rest ucommented --%>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-dropdown.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-transition.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-collapse.js"></script>    
		<!--
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-alert.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-modal.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-scrollspy.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-tab.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-tooltip.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-popover.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-button.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-carousel.js"></script>
		<script src="themes/cloudy/thirdparty/bootstrap/js/bootstrap-typeahead.js"></script>
		-->
		<%-- Tip: on a live site you should load javascript via Requirements::javascript, and combine and minify them --%>

		<%-- IE7-9 Special cases --%>
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="themes/cloudy/thirdparty/heygrady-textshadow/jquery.textshadow.css">
			<script src="themes/cloudy/thirdparty/heygrady-textshadow/jquery.textshadow.js"></script>
			<link rel="stylesheet" href="themes/cloudy/css/ie.css">
			<script src="themes/cloudy/javascript/ie.js"></script>
			<![endif]-->
		
		<%-- Loading of preview assets. They will be deleted automatically if you choose not to keep them --%>
		<% include PreviewAssets %>
	</head>

	<body class="$ClassName">
		<div class="container">
			<header>
				<div id="Logo">
					<% include Logo %>
				</div>
				<div id="TopNavigation">
					<% include TopNavigation %>
				</div>
				$SearchForm
			</header>
			<div id="Navigation">
				<% include Navigation %>
			</div>
			<div id="Layout">
				$Layout
			</div>
			<footer>
				<% include Footer %>
			</footer>
		</div>
		<!-- Google analytics - uncomment, if needed -->
		<!--
		<script>
		var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']]; // Change UA-XXXXX-X to be your site's ID
		(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';s.parentNode.insertBefore(g,s)}(document,'script'));
		</script>
		-->
	</body>
</html>