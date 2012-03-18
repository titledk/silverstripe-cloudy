

<% if URLSegment == "home" %>
<div id="Preview" class="hero-unit">
  <h1><small>...and,</small> Welcome to Cloudy!</h1>
  <p>This is an introduction for you to get started with Silverstripe theming,
  and the Cloudy theme. <br />
  If you don't need this, feel free to get rid off all preview files right away!</p>
  <p>
    <a id="delete-preview-files1" class="btn btn-danger" data-loading-text="waiting for delete confirmation...">
      <i class="icon-trash icon-white"></i>
      Delete preview files
    </a>
  </p>

	<div id="delete-preview-files-alert" class="alert alert-block alert-error fade in" style="display:none;">
    <h4 class="alert-heading">Are you sure?</h4>
    <p>
    This action will delete all Cloudy preview files, and leave you with an empty install of Cloudy. <br />
    If you want to get them back you might need to re-download Cloudy. <br />
    Probably you know what you're doing. Then, please just go ahead.
    </p>
    <p>
      <a id="delete-preview-files2" class="btn btn-danger" href="#" data-loading-text="attempting to delete preview files..." rel="popover">I know what I'm doing, please delete all preview files</a> 
      <a id="delete-preview-files-cancel" class="btn" href="#">Cancel</a>
    </p>
  </div>


	<div class="tabbable">
	  <ul class="nav nav-tabs">
	    <li class="active"><a href="#preview-color-schemes" data-toggle="tab">Color Schemes</a></li>
	    <li><a href="#preview-examples" data-toggle="tab">Examples</a></li>
	    <li><a href="#preview-readme" data-toggle="tab">Readme</a></li>
	  </ul>
	  <div class="tab-content">
	    <div class="tab-pane active" id="preview-color-schemes">
	      <p>
	      	Cloudy is built out-of-the box to support several color schemes. <br />
	      	Preview the 2 built-in themes here:
	      </p>
	      <p>
			    <a id="cloudy-base" class="btn change-scheme">
			      <i class="icon-picture"></i>
			      Base scheme
			    </a>
			    <a id="cloudy-green" class="btn btn-primary change-scheme">
			    	<i class="icon-picture icon-white"></i>
			      Green scheme (standard)
			    </a>
			  </p>
			  <p>
			  	<em>
			  		Note that the scheme preview only works on this page, as the stylesheets are only changed via Javacript. 
			  		In order to permanently change the scheme, you need to edit the <code>Page.ss</code> file. See the Readme for more info on this.
			  	</em>
			  </p>   
	    </div>
	    <div class="tab-pane" id="preview-examples">
	      <p>Cloudy comes bundled with some example pages of how your page might look like with some content. <br />These examples are also mobile <em>(as in iPhone)</em> optimized, so feel free to give them a shot there as well!</p>
	      <p>
			    <a class="btn" href="themes/cloudy/_preview/page-base.html">
			      <i class="icon-file"></i>
			      Page (base)
			    </a>
			    <a class="btn btn-primary" href="themes/cloudy/_preview/page-green.html">
			    	<i class="icon-file icon-white"></i>
			      Page (green)
			    </a>
			  </p>
	      <p>
			    <a class="btn" href="themes/cloudy/_preview/gallery-base.html">
			      <i class="icon-camera"></i>
			      Gallery (base)
			    </a>
			    <a class="btn btn-primary" href="themes/cloudy/_preview/gallery-green.html">
			    	<i class="icon-camera icon-white"></i>
			      Gallery (green)
			    </a>
			  </p>			  

	    </div>
	    <div class="tab-pane" id="preview-readme">
	      <p>Readme is loaded via AJAX. If you see this, an error has occured.</p>
	    </div>
	  </div>
	</div>

</div>
<% end_if %>