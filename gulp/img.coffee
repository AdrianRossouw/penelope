gulp       = require 'gulp'
gp         = (require 'gulp-load-plugins') lazy: false
path       = require 'path'
browserify = require 'browserify'
source     = require 'vinyl-source-stream'

# Images
gulp.task 'img', ->
  gulp.src ['app/img/*.jpg', 'app/img/*.png']
    .pipe gp.cache gp.imagemin
      optimizationLevel: 3
      progressive: true
      interlaced: true
    .pipe gulp.dest 'www/img'
