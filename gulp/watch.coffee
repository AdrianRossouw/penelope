'use strict'
gulp       = require 'gulp'
gp         = (require 'gulp-load-plugins') lazy: false
path       = require 'path'

# Watch
gulp.task 'watch', ['connect'], ->
  gulp.watch 'app/**/*', read:false, (event) ->
    ext = path.extname event.path
    taskname = null
    reloadasset = null
    switch ext
      when '.jade', '.md', '.svg'
        taskname = 'html'
        reloadasset = 'www/index.html'
      when '.less'
        taskname = 'css'
        reloadasset = 'www/css/main.css'
      when '.coffee', '.js'
        taskname = 'js'
        reloadasset = 'www/js/main.js'
      else
        taskname = 'img'
        reloadasset = "www/img/#{path.basename event.path}"
    gulp.task 'reload', [taskname], ->
      gulp.src reloadasset
        .pipe gp.connect.reload()
    gulp.start 'reload'
