module.exports = function(grunt) {

    grunt.initConfig({
    	watch: {
    		clientJS: {
    			files: [
                    './html/src/js/*.js',
                    './html/src/js/*/*.js'
                ],
                tasks: [
                    'jshint',
                    'concat',
                    'uglify'
                ],
                options: {
                    livereload: true
                }
    		},
    		scss: {
				files: [
					'./html/src/scss/**/*.scss'
				],
				tasks: [
					'sass',
					'cssmin'
				],
				options: {
    				livereload: true
    			}
    		},
    		templates: {
    			files: [
                    './html/templates/index.php',
    				'./html/templates/**/*.html'
    			],
    			options: {
    				livereload: true
    			}
    		},
    		images: {
                files: [
                    './html/src/img/**/*.{png,jpg,gif}'
                ],
                tasks: [
                    'imagemin'
                ],
                options: {
                    livereload: true
                }
            },
            tests: {
                files: [
                    './app/*.php',
                    './app/controllers/*.php',
                    './app/models/*.php',
                    './app/views/*.php'
                ],
                options: {
                    livereload: true
                }
            }
    	},
    	jshint: {
            all: {
                src: [
					'gruntfile.js',
					'./html/src/js/**/*.js'
				],
                options: {
                    jshintrc: true
                }
            }
        },
        concat: {
            dist: {
                src: [
                    './bower_components/color-thief/dist/color-thief.min.js',
                    './bower_components/tinycolor/tinycolor.js',
                    './bower_components/angular/angular.min.js',
                    './bower_components/angular-ui-router/release/angular-ui-router.min.js',
                    './bower_components/angular-resource/angular-resource.min.js',
                    './bower_components/angular-sanitize/angular-sanitize.min.js',
                    './bower_components/angular-truncate/src/truncate.js',
                    './html/src/js/**/*.js'
                ],
                dest: './html/js/app.js',
            }
        },
        uglify: {
            build: {
                src: './html/js/app.js',
                dest: './html/js/app.min.js'
            }
        },
    	sass: {
    		dist: {
                options: {
                    style: 'expanded'
                },
                files: {
                    './html/css/styles.css': './html/src/scss/styles.scss'
                }
            }
    	},
    	cssmin: {
            combine: {
                files: {
                    './html/css/styles.min.css': [
                        './html/css/styles.css'
                    ]
                }
            }
        },
        imagemin: {
            dynamic: {
                files: [{
                    expand: true,
                    cwd: './html/src/img/',
                    src: ['**/*.{png,jpg,gif}'],
                    dest: './html/img/'
                }]
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-imagemin');

    grunt.registerTask('default', ['watch']);

};
