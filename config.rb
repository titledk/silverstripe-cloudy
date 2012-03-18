# Cloudy Compass configuration
# with compass installed, cd into this directory and run 'compass watch'


# Set this to the root of your project when deployed:
css_dir = "css"
sass_dir = "scss"
images_dir = "images"
#http_images_dir = "/themes/cloudy/images"
http_images_path = "/themes/cloudy/images/"
# More explaination on images here: http://chriseppstein.github.com/blog/2010/05/17/where-are-your-images/

javascripts_dir = "javascript"

# Loading the Bootstrap SCSS files
add_import_path "thirdparty/bootstrap/scss"


# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed


# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

# fireSass debugging
# sass_options = {:debug_info => true}