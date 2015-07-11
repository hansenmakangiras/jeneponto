var elixir = require('laravel-elixir');
var paths = {
    'bootstrap': './vendor/bower_components/bootstrap-sass-official/assets/',
    'jquery':'./vendor/bower_components/jquery/dist/'
}
/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

 elixir(function(mix) {
    mix.copy(
        'vendor/bower_components/jquery/dist/jquery.js',
        'resources/assets/js/jquery.js'
    ).copy(
        'vendor/bower_components/bootstrap/less',
        'resources/assets/less/bootstrap'
    ).copy(
        'vendor/bower_components/bootstrap/dist/js/bootstrap.js',
        'resources/assets/js/bootstrap.js'
    ).copy(
        'vendor/bower_components/bootstrap/dist/fonts',
        'public/fonts'
    );
    // Combine scripts
    mix.scripts([
            'js/jquery.js',
            'js/bootstrap.js'
        ],
        'public/js/vendor.js',
        'resources/assets'
    );

    mix.sass("style.scss", 'public/css/', {includePaths: [paths.bootstrap + 'stylesheets/']})
 });
