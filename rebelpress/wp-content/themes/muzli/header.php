<!DOCTYPE html>
<html <?php language_attributes() ?>>
<head>
	<meta charset="<?php bloginfo('charset') ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="alternate" type="application/rss+xml" title="<?php echo get_bloginfo('sitename') ?> Feed" href="<?php echo get_bloginfo('rss2_url') ?>">
	<?php wp_head() ?>
</head>
<body <?php body_class() ?>>

	<header class="site-header">
		<nav class="container">
			<?php wp_nav_menu( array(
				'theme_location'  => 'primary',
				'menu_class'      => 'menu',
				'container'       => false,
			) ) ?>
		</nav>
	</header>

	<main>
		<section class="content container">