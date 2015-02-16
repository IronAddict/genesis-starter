### Notes:
   - gulp/tasks/browserify.js handles js recompiling with watchify
   - gulp/tasks/browserSync.js watches and reloads compiled files
###

gulp   = require 'gulp'
config = require '../config'

gulp.task 'watch', ['setWatch', 'browserSync'], ->
  gulp.watch config.sass.src,      ['sass']
  gulp.watch config.images.src,    ['images']
  gulp.watch config.jshint.src,    ['jshint']
  gulp.watch config.phpunit.watch, ['phpunit']
  gulp.watch config.jasmine.watch, ['jasmine']
