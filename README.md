# Cloudy Silverstripe Theme



![image](http://cloudy.title.dk/preview.png)


This theme has been handcrafted by [Anselm Christophersen](http://www.anselm.dk) during January/February 2012 for the Silverstripe Theme Contest.

The theme was a finalist, and was ranked overall second in terms of code quality. You can read more about that on the [Silverstripe Blog](http://www.silverstripe.org/and-the-winner-of-the-theme-contest-is../).

You can see some demo pages here:

* [Normal page (blue color scheme)](http://cloudy.title.dk/themes/cloudy/_preview/page-base.html)    
* [Gallery (green color scheme)](http://cloudy.title.dk/themes/cloudy/_preview/gallery-green.html)
* [Standard installation](http://cloudy.title.dk/)




## Copyright and license

This theme is copygright 2012 title.dk/Anselm Christophersen and licensed under the [Apache license](http://www.apache.org/licenses/LICENSE-2.0).    Third party libraries that are used in this theme are licensed under their repective licenses.


## Installation

 * Copy the theme into the `themes/` directory of your SilverStripe project.  If you've named it correctly, there should be a directory called `themes/cloudy/templates`.
 * Add the following to your `mysite/_config.php` file: `SSViewer::set_theme('cloudy');`
 * Remove or uncomment any other existing `SSViewer::set_theme` lines.



## About this Theme

### Features
Being built on top of the great  [Twitter Bootstrap 2 Framework](http://twitter.github.com/bootstrap/), Cloudy should be seen not only as a theme, but also as a toolbox for getting started with Silverstripe, suitable both for beginners as well as advanced users.

* Works right out-of-the box in both SS3 and SS2.4.
* Very easy to customize as it includes different color schemes. Furthermore, Cloudy uses the Compass/SCSS preprocessor, so color variables can easily be altered.
* The CSS is still editable without having Compass installed!
* Language-select dropdown for multi-language sites, as well as a top menu for logged in users.
* Features as the top menu, the quotes, and the social buttons are easy to disable.
* Responsive CSS allows specific layout for small screens, mobile and tablet devices.


### Bundled
* All Twitter Bootstrap 2's widgets, for easily adding advanced buttons, tab navigations, modal boxes, tooltips, and image carousels. If you don't need this, you can easily opt for the small footprint javascript version.
* Open source icon font Websymbols, allows to easily change icons like the Cloud icon, and to add additional social media and top menu icons.
* Uses no images beyond that! All graphic effects are CSS3. Falback is provided by Compass's legacy feature.
* 2 example pages. Use these to get get a head-start with content setup!

### Compatibility

* Works well on all modern browsers and works on IE7/8 as good as it can get.
* Mostly follows code practices set out in Silverstripe Ltd.'s modules and previous themes.
* Includes sub themes for blog & forum, and is easy to extend with additional sub themes.

#### Silverstripe Compatibility & Supported Modules
This theme has been tested with the following Silverstripe configurations

* Silverstripe 3 alpha 2
  * translatable (requires some minor tweaks)
  * thinc gallery (requires some minor tweaks)
  * blog and forum didn't seem two be working so well on this release yet. Hence they have been tested on SS2
* Silverstripe 2.4.7
  * blog
  * forum (the forum support should be seen preliminary)


#### SS3 Tweaks
The current development version of SS3 seems to have some troubles with Fulltextsearchable/translatable. The following has been done to make them work:

* Removing the following line in the `enable` method in `/sapphire/search/FulltextSearchable.php`:    
`if(DB::getConn()->getDatabaseServer() == 'mysql') {`


## Working with Content

For content editing, Cloudy mostly adheres to Silverstripe standards.   
A minor non-standard thing is that you can integrate sub headings in the title.    
[See an example here](themes/cloudy/_preview/gallery-base.html).   
This can be done by wrapping your heading within a html `<small>` element like this: `Gallery<small>Another easy-pluggable module</small>`.

The rest is probably best explained by inspecting the example pages (see the `_preview` directory).

Bootstrap comes with some great styles, especially for tables which are all set up in Cloudy. An example of how to use these will be added soon.

## Configuration

### Icons
The theme comes bundled with many icons. See examples here:

* [The Websymbols typeface](http://www.justbenicestudio.com/studio/websymbols/)
* [The Glyphicicons bundled with Twitter Bootstrap](http://twitter.github.com/bootstrap/base-css.html#icons)

Use above reference to change the logo icon in `Logo.ss`, the toolbar icons in `TopNavigation.ss`, and the social icons in `Footer.ss`. All files are found in `templates/Includes`.



### Search and Language Dropdown

Examples for a Cloudy configuration.

You can add these in your `/mysite/_config.php` file:

	#Enable Search
	FulltextSearchable::enable();

	#Translatable
	#This requires the translatable and a couple of small tweaks 
	#in the current SS3 alpha
	Object::add_extension('SiteTree', 'Translatable');
	Object::add_extension('SiteConfig', 'Translatable');

### Social Buttons

This theme contains a template with social media buttons.
As their many dependencies are not a joy to develop with, they have been uncommented, but are easy to enable for live sites.   
In order to enable the buttons, edit `templates/Includes/Sidebar.ss`, and change the uncommented code to this: `<% include SocialButtons %>`.


### Color Schemes
Cloudy comes with 2 color schemes. Green and base.   
The base color scheme mainly uses the Twitter Bootstrap colors. Fortunately they fit very well with the Silverstripe colors.

#### Change the Color Scheme

Switching between the color schemes can be done by editing the `templates/Page.ss` file. Find the line that contains `require themedCSS` and change it to either `cloudy-base` or `cloudy-green`, or which ever additional color scheme you might have installed. The name corresponds to the css file to be found in the `css` directory.

#### Rolling your own Color Scheme
Editing the css is fairly straight-forward. It is recommended to not overwrite the current themes, but to make your own, and call it something like `cloudy-myscheme`.   
The recommended way is to do this by using [Compass](http://compass-style.org/), but you can also perfectly just use plain CSS.

##### Using plain CSS
1. Copy either `css/cloudy-base.css` or `css/cloudy-green.css`, and create your own file in the `css` directory
2. Edit the `require themedCSS` part in `templates/Page.ss` to reflect your new scheme.
3. Start editing 

##### Using Compass
Using Compass you can take advantage of built-in variables and all modules from the Twitter Bootstrap 2 library, which have been carefully converted to SCSS by  [Brajeshwar](https://github.com/brajeshwar/bootstrap-sass-scss-compass).    
Start by having a look at `scss/cloudy-green.scss`. That should take you a long way. And don't forget to cd into the cloudy directory and running `compass watch`.

When working with compass you may remove the hash in front of the last line in `config.rb`: `sass_options = {:debug_info => true}`. If you do this, compass will compile your stylesheets with [FireSass](https://github.com/nex3/firesass) debug info, which is very useful when developing (you'll need to install the FireSass Firebug extension for this to work).

## The Preview Feature
The theme contains a "Preview" feature to show some live examples on changing colors, and to show some typography and module examples.

### Removing the Preview Feature
The "Preview" feature adds some JS/CSS and html code to the theme. As these are only for illustration purposes, it also contains a script to easily remove the entire preview feature.  

### Troubleshooting Problems when removing the Preview Feature
Usually the "Preview Feature" can be removed easily by just pressing the button `Delete preview files` on the home page. 
If this for some reason doesn't work, here's some info how to solve this:


* **First try: Changing permissions**
  * If you are on OSX/Linux, try to cd into the themes folder and run `chmod -R 777 ./cloudy`.
  * If you are running Windows, file permissions can be adjusted by right-clicking the Cloudy folder, and editing properties.
  * If the theme has been directly installed on a web server, log in via ftp, right-click the cloudy directory, give it all permissions, and remember to click the option to recursively do the same for all sub directories
* **Second try: Removing files manually.**    
Sometimes you would be in the situation, that you don't have access to editing your permissions. In this case, here is info on how to go ahead, removing the preview files manually:
  * Delete `_deletepreviewfiles.php`. This is the file that should have automated your work in the first place.
  * Delete the `_preview` directory
  * In Delete `templates/Includes/` delete `Preview.ss` and `PreviewAssets.ss`
  * Delete `javascript/preview.js`
  * Delete `scss/preview.scss` and `css/preview.css"`
  * Edit `templates/Page.ss` and delete the line `<% include PreviewAssets %>`
  * Edit `templates/Layout/Page.ss` and delta the line `<% include Preview %>`

**Remember:** If you are doing this on a live site, once the preview files have been removed, it is good practice to remove the write access to your theme folder.


## Planned Features
As Cloudy has been designed and build as a contribution to the 2012 Silverstripe Theme Contest, not all features made it to become part of the initial release.   
The following features are planned for coming releases:

* Completely translatable (I didn't make it for the deadline, sorry...). Also the preview feature and the documentation.
* Cutting down the length of this Readme file and placing additional documentation in a `docs/en` folder. This way other translations have proper place.
* Additional color schemes
* 3rd level navigation: Use tabs!
* Support the most popular and actively maintained modules    
These are planned to be kept fully supported (and others will probably be added)
  * blog
  * userforms
  * event calendar
* More typography examples, showing all headings, and table layouts
  * documentation on how to properly use the `editor.css` styles within tinyMCE
* Built-in JS scheme selector in examples
* Fixing some minor issues with the responsive design in portrait mode on iPad
