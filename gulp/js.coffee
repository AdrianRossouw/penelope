gulp       = require 'gulp'
gp         = (require 'gulp-load-plugins') lazy: false
path       = require 'path'
browserify = require 'browserify'
source     = require 'vinyl-source-stream'

# JS
gulp.task 'js', ->
  browserify
    entries: ['./app/js/main.js']
    extensions: ['.js']
  .transform 'deamdify'
  .transform 'debowerify'
  #.transform 'uglifyify'
  .bundle debug: true
  # Pass desired file name to browserify with vinyl
  .pipe source 'main.js'
  # Start piping stream to tasks!
  .pipe gulp.dest 'www/js'
