'use strict'
gulp       = require 'gulp'
gp         = (require 'gulp-load-plugins') lazy: false
path       = require 'path'
browserify = require 'browserify'
source     = require 'vinyl-source-stream'

# Clean
gulp.task 'clean', ->
  gulp.src ['www', 'tmp'], read: false
    .pipe gp.clean force: true
