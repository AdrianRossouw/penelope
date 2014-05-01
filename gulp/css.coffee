gulp       = require 'gulp'
gp         = (require 'gulp-load-plugins') lazy: false
path       = require 'path'
browserify = require 'browserify'
source     = require 'vinyl-source-stream'


# CSS
gulp.task 'css', ->
  gulp.src 'app/css/*.sass'
    .pipe gp.plumber()
    .pipe gp.rubySass style: 'compressed', loadPath: ['bower_components', '.']
    .pipe gp.cssmin keepSpecialComments: 0
    .pipe gp.autoprefixer 'last 1 version'
    .pipe gulp.dest 'www/css'
