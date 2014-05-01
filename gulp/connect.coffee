gulp       = require 'gulp'
gp         = (require 'gulp-load-plugins') lazy: false
path       = require 'path'
browserify = require 'browserify'
source     = require 'vinyl-source-stream'

# Connect
gulp.task 'connect', ['default'], ->
  gp.connect.server
    root: 'www'
    port: 9000
    livereload: true
