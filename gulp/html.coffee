gulp       = require 'gulp'
gp         = (require 'gulp-load-plugins') lazy: false

# HTML
gulp.task 'html', ->
  gulp.src 'app/index.jade'
    .pipe gp.plumber()
    .pipe gp.jade locals: pageTitle: 'Famo.us built with Gulp'
    .pipe gulp.dest 'www'
