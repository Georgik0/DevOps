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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'service-mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'fQqN~+pnEMCpAigZFCQ 3z,j%J@|QPe+6^cxI]qT0Rjq(uRvc>YR{<u+fH+T;/t:');
define('SECURE_AUTH_KEY',  'ONT>;Btm*l~0l[Q-xD%VUOr[A|A%2cUVd]u t!e.oog*s5T4Cu3f+YN-spM6 %Tu');
define('LOGGED_IN_KEY',    '^>(r+3D/d]#_JaKKt{ZpmL]Qm+ki||haSfm~7+}R;z|t{A!A~BnPt^{fa:[+&}]|');
define('NONCE_KEY',        'y$G|hU6t0EgMkX9NF;-V{1]`Dq:(YS?E}|H&+DGdm6Iee,x.z{clxn+l`+3hU-z7');
define('AUTH_SALT',        '0S-@,-crDSKl%Z|eZmE|Oe_auromoCy>;=PtSR=P|<+jz<7- L8P77%Exl{BY8||');
define('SECURE_AUTH_SALT', 'bc:&=,m|[pDxx?w):^^y~~j-0B|`L1C@*n`B(|^?G])74dq-8p}9L1||UJuNP5r<');
define('LOGGED_IN_SALT',   '=Nj2NX|z-bPRb~:%Wgj;|OGS|E}%zwDgjat?Z#P}?Hzgfn)X4S;D:X!8$@+cwPw<');
define('NONCE_SALT',       'R}vwOF=PS{oT_4`h$y`p9E7K@BW6v-@O^a>CA=$2f3m^@sVlDAm9>n<doJ?3=@;O');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
