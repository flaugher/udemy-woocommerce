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
define('AUTH_KEY',         '1GdTif3RIR0O9k4Ue9zjJ0FHvxV6squzL9ogvql8/2wWQou4liUD4S//QtWub0OIiYoyUYcdpR6GRMS+UN8Y2Q==');
define('SECURE_AUTH_KEY',  'yiaoxbYSFP7ZGeu9a4tikE2xsw3jMr8lMHxfh3JDYGR3SAbrzNbvrMa3e70mJA9rQEeAtf2RO3AqbkxCm8HrxA==');
define('LOGGED_IN_KEY',    '6SSxkN4yTAgywIDntRGb+wfzKMX6HK29iTMAnp4tceMuL0TS4a5sq8oY4KdXkpNu3OjZZTl6/y9gH5CpJ0lLog==');
define('NONCE_KEY',        '9B/dA7yoDQKI93qEPtxbukkkJHJ6udrvcqZZEq1oJwIRJk6iaIAm9yJDpySd2zNw2Us7E97jViJZoTeu3n93jw==');
define('AUTH_SALT',        'GDN/g6lZSquyzPa5cYyWcWTWdMZ6dc1cbF61+gKeeQR8r+XOPEKrAeOo2eSqYkADx2GAUg8SP3eCG5OVAQcWtA==');
define('SECURE_AUTH_SALT', '/DVIwtyQphP1tj+519+FhjmBsYYkxGpK3jiYvS0i41EmlCCyg1p8Ocuo+Ej7PV4L/OULzKdMyi8C4tbWuaVfCQ==');
define('LOGGED_IN_SALT',   'XFrfHLGqYXuGpK1sVIbpO0nsAr7T3Ym5BPd6vZnUX7z7zWAcrtvbouaS+M7Bargq0X0ij0lG37uATTUdozpWUQ==');
define('NONCE_SALT',       '6PzXoxhFE6wt23wYdr6RKw2o3FCkkhbwMFMyxcbNxgaxQvoZhWKr0BLE2R+m5bFxV3/2g7eemNC3vrWIK6l3WA==');

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
