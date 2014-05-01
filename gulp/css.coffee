gulp       = require 'gulp'
gp         = (require 'gulp-load-plugins') lazy: false
path       = require 'path'

# CSS
gulp.task 'css', ->
  gulp.src 'app/css/*.less'
    .pipe gp.plumber()
    .pipe gp.less paths: ['bower_components', '.']
    .pipe gp.cssmin keepSpecialComments: 0
    .pipe gp.autoprefixer 'last 1 version'
    .pipe gulp.dest 'www/css'
