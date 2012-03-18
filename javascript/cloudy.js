/**
 * Cloudy JS Tweaks
 * Currently there's nothing important here, so you can safely omit it
 * Coming versions might contain some neat features
*/

(function($) {
	$(function () {

		//Adding the document cloud (&#9729;) to mobile devices, as they don't support
		//favicons, and the symbol works pretty well
		//We start out with iPhones and iPads, but this is easily extendable

		if(navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPhone/i)) {
			//Probably this will only work as long as this document is kept in UTF8
			document.title = document.title.replace(" - ", " ☁ ");
		}

	});
})(jQuery);	
