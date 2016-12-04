var gulp = require('gulp');
var shell = require('gulp-shell');
var clean = require('gulp-clean');
var changed = require('gulp-changed');
var print = require('gulp-print');

// compress and optimize the pdf files with ghostscript
gulp.task('pdf-to-png', function() {
    return gulp.src(['**/*.pdf', '!build/**'])
        .pipe(changed('**/*.pdf')) //only changed pdf files
        .pipe(shell([
            //create directory if it does not exist
            'mkdir -p \"build/<%= file.relative.split("/").slice(0, -1).join("/")+"/" %>\"',
            //Convert PDF to png 
            'gs -sDEVICE=pngalpha -dNOPAUSE -dQUIET -dBATCH -r300  -o \"build/<%= file.relative.replace(".pdf",".png") %>\" \"<%= file.relative %>\"'
        ], {
            verbose: true,
        }))
        .pipe(print())

})

// delete input directory
gulp.task('clean', function() {
    return gulp.src('build', {
            read: false
        })
        .pipe(clean());
});

// watch for changes
gulp.task('default', ['compress']);
