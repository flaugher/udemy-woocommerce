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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'P4vMpiT5QHd9O35GXmG8RM1E0k8G1vXrqxDmdPy+D8MgXo83d3CKwcgI7oLik/FEbZuxd8x3U114jr/34X2hgg==');
define('SECURE_AUTH_KEY',  'oZfyaftKuW3KxIcX9s0KScMZmE4ugCZSOkvzfivW5z5soQ7FrHWX+JpSB5wwmkcs6GI3iKCCQK46iIH4ECHDRg==');
define('LOGGED_IN_KEY',    '3ChnG612XQ4H3u/qBs2o0GXmHJOcgD+sfOL27MED9gNZErwCjCOgF7x8qJWMikmSgEfDwnIes+TnkMD1o41SQw==');
define('NONCE_KEY',        'auyUzqK043kKbTV7JHULPgfH7csUi76LjkLBvvAeMsmIK0rE+wfqBTAGT3yn2beLmRvSu/p9RMuvj6pHqfuHhA==');
define('AUTH_SALT',        'NeobTPjBL65lvKmhzqHImyXe1g5UT+K6oJV0kopELX+DMxktYzfkpfWvrGi1qRA/QYw1tDMjwa1Ket3kyRZByg==');
define('SECURE_AUTH_SALT', '6jY3Mim1ilH4OmGsVNugVWn8OLhv/qHsSaVFcLPh6VnsOWtppYaRvin+XxB5kUh9qPf+4dsqzm2cFuGS53+gPw==');
define('LOGGED_IN_SALT',   'Dz/FI5UixcivvCTyBxdS5PeOl2xPFPtsY2isGCL4DQToyDeqVg1TrwKWwNEyofPReDlg9pJy9UpiGClSZb0EVQ==');
define('NONCE_SALT',       'X4lcFn38tcAAZTtkp9i7l6tqmc2H8tkf/gtQz/2WQMeHut/jgS9cuPfdqHGpKVwqCd5HyPf5pgYtNEI0FGgs3A==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
