<?php

/**
 * Add scripts & styles
 */
add_filter( 'wpcf7_load_js', '__return_false' );
add_filter( 'wpcf7_load_css', '__return_false' );

add_action('wp_enqueue_scripts', 'muzli_theme_scripts');
function muzli_theme_scripts()
{
	wp_enqueue_script(
		'muzli-app', get_template_directory_uri() . '/js/app.js',
		array( 'jquery' ), '', true
	);

	wp_enqueue_style(
		'muzli-style', get_stylesheet_uri()
	);

	wp_enqueue_style(
		'muzli-animations', get_template_directory_uri() . '/css/animations.css'
	);

	wp_enqueue_style(
		'muzli-fonts', 'http://fonts.googleapis.com/css?family=Montserrat:400,700'
	);

	// only load CONTACT FORM 7 on contact page
	if ( is_page('contact') )
	{
		if ( function_exists( 'wpcf7_enqueue_scripts' ) ) {
			wpcf7_enqueue_scripts();
		}

		if ( function_exists( 'wpcf7_enqueue_styles' ) ) {
			wpcf7_enqueue_styles();
		}
	}
}
