/**
 * Cloudy JS Preview
 * This Javascript is only needed for the Cloudy Preview
 */

(function($) {
	$(function () {


		//Change Scheme
		$('body').on('click', '.change-scheme', function (e) {
			e.preventDefault();

			var newscheme = $(this).attr("id");

			var arr = [];
			$(".change-scheme").each(function() {
				arr.push($(this).attr("id"));
			});
			//console.log(arr);

			$("link").each(function() {
				$this = $(this);
				$.each(arr, function(index, value) {
					if ($this.attr("href").indexOf(value) !=-1)	{
						$this.attr("href", $this.attr("href").replace(value,newscheme));
					}
				});
			});
		});

		//The "delete preview files" feature
		$("#delete-preview-files1").click(function(){
			$(this).button('loading');
			$("#delete-preview-files-alert").slideDown();
		});
		$("#delete-preview-files-cancel").click(function(){
			$("#delete-preview-files1").button('reset');
			$("#delete-preview-files-alert").slideUp();
		});
		$("#delete-preview-files2").click(function(){
			var button = $(this);
			button.button('loading');
			$.get($("base").attr("href") + "themes/cloudy/_deletepreviewfiles.php?delete=1", function(data){
				var title = "";
				var content = "";
				if (data == "success") {
					button.text("success");
					title = "Sucess!"
					content = "All files have been removed. <br />Now reloading the page...";
					location.href = location.pathname + "?flush=1";
				} else {
					button.text("failed");	
					title = "We've run into a little problem...";
					content = 'Don\'t worry. Probably this is only a permission issue. ' +
					'If you are on OSX/Linux, try to cd into the themes folder and run' +
					'<br /><code>chmod -R 777 ./cloudy</code>. <br />' +
					'Once you\'ve fixed this, press this button: <br /><br />' +
					'<a href="/themes/cloudy/_deletepreviewfiles.php?delete=1" class="btn btn-danger" target="_blank">Run delete again</a>' + 
					'<hr/><strong>Error message:</strong><br />' + data +
					'<hr /><em>If you\'re having troubles with this, please consult the Readme file.</em>';
				}
				
				button.popover({
					title: title,
					content: content,
					trigger:"manual"
				});
				$("#delete-preview-files2").popover("show");
			});
		});


		//Populating the readme from the markdown file
		$.get($("base").attr("href") + "themes/cloudy/README.md", function(data){
			converter = new Markdown.Converter().makeHtml;
			$("#preview-readme").html(converter(data));
			//console.log(data);
		});


	});
})(jQuery);	
