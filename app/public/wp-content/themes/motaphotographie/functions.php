<?php
// les couleurs du site
// Chargement du style CSS et des scripts
function theme_enqueue_styles(){
    wp_enqueue_style('theme', get_template_directory_uri() . '/css/theme.css');
    wp_enqueue_style('style', get_template_directory_uri() . '/style.css');
    wp_enqueue_style('font-awesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css', array(), null);
}

    
// Ajout de la gestion des menus dans le tableau de bord de wordpress
function register_custom_menus() { 
    register_nav_menus(array(
        'menu_principal' => __('Menu principal', 'Photographe'),
        'menu_secondaire' => __('Menu secondaire', 'Photographe'),
    ));
}
    
// ajout de la gestion du logo dans le dasbord personnalisation
function mytheme_custom_logo_setup() {
    add_theme_support('custom-logo', array(
        'height' => 100,
        'width' => 400,
        'flex-height' => true,
        'flex-width' => true,
    ));
}


//  Chargement du script JS
function theme_enqueue_script() {
    wp_enqueue_script('jquery');
    wp_enqueue_script('script', get_template_directory_uri() . '/assets/js/script.js');
}




//lancement des functions
add_action('wp_enqueue_scripts', 'theme_enqueue_styles');
add_action('init', 'register_custom_menus');
add_action('after_setup_theme', 'mytheme_custom_logo_setup');
add_action('wp_enqueue_scripts', 'theme_enqueue_script');
