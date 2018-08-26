var gulp = require('gulp');
var pandoc = require('gulp-pandoc');
var pdf = require('gulp-pandoc-pdf');

//var gutil = require('gulp-util');
//var cat = require('gulp-concat');
//var sh = require('shelljs');
//var order = require('gulp-order');
 
gulp.task('docs', function() {
    return gulp.src('docs/**/*.md')
    .pipe(pdf({
    	args  : ['--smart', '--variable=urlcolor:cyan'],
        pdfDir: 'release/pdf'
    }))
    .pipe(gulp.dest('release/html'));
});