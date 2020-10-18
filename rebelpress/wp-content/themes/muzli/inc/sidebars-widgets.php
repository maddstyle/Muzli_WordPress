<?php

/**
 * Sidebars & Widgets
 */

// enable shortcodes in widgets
add_filter( 'widget_text', 'do_shortcode' );

// register sidebars
add_action( 'widgets_init', 'muzli_widgets_init' );
function muzli_widgets_init()
{
	register_sidebar( array(
		'name'          => 'Pre-footer Sidebar',
		'id'            => 'sidebar-primary',
		'description'   => 'shows up under every page',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
}
