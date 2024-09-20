<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'don' );

/** Database username */
define( 'DB_USER', 'donpha' );

/** Database password */
define( 'DB_PASSWORD', 'donpha' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '}FL2w!)V*gnd_O>/2BMeVbk,DFMFP`3:{~%-f`+I(|:TO`pja5TOm|-$n^/68@N<');
define('SECURE_AUTH_KEY',  '4t;<}@YwqILI!0#%M#9/g|zBG&8-fxsNeJq+;w!Ir$%%Q)wv:5=yqjR27f5`^OfX');
define('LOGGED_IN_KEY',    'k;bNS#!;yL;UWr9~7h;UgZ#}Yw;QHF@IdnnnsqPCxY+~cOswFHmgq-s><bCR{]0~');
define('NONCE_KEY',        '+c|;FP[?xp%8%G1B#6)^xIY5M1Q40Pc^F~>-R#WNp);j@Wv;ba{b|:{Zt&IT@2R:');
define('AUTH_SALT',        '~O(zMzM qt+D-<V./l}8~mCC2ueEN687-pL|M[u ^?aGFuv`_,XQ(W~GG||WQgU,');
define('SECURE_AUTH_SALT', ';QEw^jG`jVL|f=-Vm4_<{_|0lyl}TSkt+win+Rx+Dd^-gWj0hM24[yVw|p?+#EIA');
define('LOGGED_IN_SALT',   'zf/r<T.[IE3+aP9ek0]5|2I5[Q-RgA~$g|-oBM]V`zOyeo]cw[8ZMY/Nn*+Su|QD');
define('NONCE_SALT',       ';!+U2YKS^TT&rTp|k?fzGya/yX90!z)`IqS<;~l|EC<*r }JaUXOf+XbL|_?e:/6');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, DB tables names with $table_prefix are created.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
