<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'wordpress' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'apommier' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '1234' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'mariadb' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Vm(p!{}6_cxF rTYP`I=)!l&60xm9MR?^**D:>_=r2;(P}<-Qi ZnAL%G3n CQWA' );
define( 'SECURE_AUTH_KEY',  'T+2K-V&%Nb0+lvfRvom)BMt&aNXM:G`3!y>HwXk*tf=j:cR5!fccpWxAv5b&v`Qe' );
define( 'LOGGED_IN_KEY',    '3FV[c{H<[z<~d=m{-;5#g&5iZk{,Ceke76tc%CTGbksQvT),i=PoVz}bet;(dD+5' );
define( 'NONCE_KEY',        'G>:_Ja?N<5ySFU?,g=[7?k~&tf)sFqElCa~Og.mpYhK* =eD4l6cLBa7O)m.yN)#' );
define( 'AUTH_SALT',        'O,[H`{.h 6<~YG XUkw}&B6>/o]}<@9I apmJ PQ(%WsTI>jWvKPAUS`m<cftLL:' );
define( 'SECURE_AUTH_SALT', 'H`i~!l[G(;U ,;Nq$SI-H5>4hdxy`Q$2kC3ZSLMrdFm^(W*xeG=lg/Xe%GKaIdX&' );
define( 'LOGGED_IN_SALT',   '2!0~FjHbN9&*7)-hzL$l~xQ6alaEm|1T0e2A9 71LsUF(kc&Cx<R4Y/PXG8X|`9|' );
define( 'NONCE_SALT',       'k7:._><Zk<ZOTp+WOwXr!wuIOqdg6Z3!HYlBXx m20~lEhXQ`!|W(Qv^/p9mZ.ro' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );                                                                                                                                                                           