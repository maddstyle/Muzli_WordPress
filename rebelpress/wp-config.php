<?php

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'rebelpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'n&+}@$w.M<%LcA3|ej`/8-r-tk$2RWS4~Lsvp5:]oEY5`tlg>W_z!HS]krwu3-{2');
define('SECURE_AUTH_KEY',  'p=^oS+o3OON]}HYx:p]rtQ;_QpM]KI(*zn.Qs|U1%5HB no[Zvvq1;_K9.u1geT`');
define('LOGGED_IN_KEY',    'xxC{pzx95ar8Xj;>;ibn8qm!C I:#Tt2>$sCg 6H-f/JQ_SL?&)^HHpPEA@q?X6w');
define('NONCE_KEY',        'h`r#?H:+@$_C7:^V:G4s&:-H%RKe|Q`=Osblp|]m38Hl]BhI?1%<mFEO(WR-~qS_');
define('AUTH_SALT',        'fch+&;z.q-6A-1sv@TWnsMOX:]M*IWmmPP^ zDcb8b{ 7zD-@t0))k)9Oh7YP%&u');
define('SECURE_AUTH_SALT', '7A~BtQ<4[V/u/>X *2%5/8iKf=,m8vq^iYQ^#Jw9<8O C=n6&DNC;EWs[[t1sI2|');
define('LOGGED_IN_SALT',   'xhNG=|-}1)uz<gGiW1(_VQ^.tO|0)=00W,1)u3f)v@@y~{(}7DUR>S2+&blto;XA');
define('NONCE_SALT',       '6;+1,Utk%&_r&= mnF[@gwi*%[Z@zg>Wg~gadg2 !9|Z^E`9,e|9RKYpNIC5@`-}');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */

// Enable WP_DEBUG mode
define('WP_DEBUG', true);

// Enable Debug logging to the /wp-content/debug.log file
define('WP_DEBUG_LOG', true);

// dont insert break-line in contact form 7
define('WPCF7_AUTOP', false);


/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH'))
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
