# Preview Maintenance

Useful information for maintaining the preview feature.

## Structure

The Preview feature is rendered by the `Includes/Preview.ss` file, and assets are defined in the `Includes/PreveiwAssets.ss` file.   
All files that don't need to be a part of the Silverstripe structure are placed in the `_preview` directory.   
The `_deletepreviewfiles.php` file contains all code necessary to delete all preview features. It will delete itself as well.


## Color Schemes

When adding new color schemes, the color schemes tab need to be amended to reflect this.   
The code in `Preview.ss` should be self explainatory.


## Examples

When changing the html structure, the example files need to be re-generated.   
This is done in the following manner:

* Take the html source code of the page you want to turn into a preview
* Remove the base tag
* Make all paths relative, so preview can be seen by just opening the file (also the IE specific ones!)

Add the following just below the `.container` div:

	<div class="alert alert-info" style="position:absolute;top:4px;z-index:100;padding:4px 10px 4px 10px;margin-right:10px;">
	  <strong>NOTE:</strong> This is a preview of the Cloudy theme. <a class="btn " href="/"><i class="icon-home"></i> Back to my site</a>
	</div>

## Readme

The readme tab doesn't need any maintenance as it automaticall reads out the `README.md` file.