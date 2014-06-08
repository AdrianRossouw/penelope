gulp  = require 'gulp'

require './gulp'

# Build
gulp.task 'build', ['html', 'js', 'css', 'img']

# Default task
gulp.task 'default', ['clean'], -> gulp.start 'build'
