/**
 * IE JS Tweaks (IE7-9)
 * This file is only loaded by IE browsers lower than or equal to IE9
*/


/**
 * Simple Client Identification
 * by Anselm Christophersen / title.dk
*/
var ua_classes = "";
//IE detection
if (jQuery.browser.msie) { //just sanity checking that we're actually on an IE browser
	var browser = "msie";
	var version = jQuery.browser.version;
	if (parseInt(version, 10) < 9) {
		ua_classes = ua_classes + "preie9 ";
	}
	ua_classes = ua_classes + "msie ie" + parseInt(version, 10) + " ";
	jQuery("html").addClass(ua_classes);
}


(function($) {
	$(function () {
		//IE textshadow
		$('#Logo h1, #Logo p, #TopNavigation span').textshadow();
	});
})(jQuery);	
