<?php
// les couleurs du site
// Chargement du style CSS et des scripts
function theme_enqueue_styles(){
    wp_enqueue_style('theme', get_template_directory_uri() . '/css/theme.css');
    wp_enqueue_style('responsive', get_template_directory_uri() . '/css/responsive.css');
    wp_enqueue_style('style', get_template_directory_uri() . '/style.css');
    wp_enqueue_style('font-awesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css', array(), null);
    
}
//Chargement des scripts 
function theme_enqueue_script() {
    wp_enqueue_script('jquery');
    wp_enqueue_script('script', get_template_directory_uri() . '/assets/js/script.js');
    wp_enqueue_script('script-lightbox', get_template_directory_uri() . '/assets/js/lightbox.js');
        //appel de la pagination conditionner a la page home et appel d'ajax c
     if(is_home()){ 
        wp_enqueue_script('script-pagination', get_template_directory_uri() . '/assets/js/charger-plus.js');//appel du script charger-plus
        wp_localize_script('script-pagination', 'myAjax', array('ajaxurl' => admin_url('admin-ajax.php'), 'nonce'   => wp_create_nonce('ajax-nonce'),));
        wp_enqueue_script('script-filtres', get_template_directory_uri() . '/assets/js/homeFilters.js');
    }
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


// Fonction charger_plus comprenant la fonction AJAX 
function charger_plus() {

    // Vérification du nonce avant exécution de la requête
    check_ajax_referer('ajax-nonce', 'nonce');
    // definition des constantes
    $page = $_POST['page'];
    $ordreTriage = $_POST['order'];
    $args = array(
        'post_type' => 'photographies',
        'posts_per_page' => 8,
        'orderby' => 'date',
        'order' => $ordreTriage,
        'paged' => $page,
    );
    // requete WP query
    $photo_query = new WP_Query($args);

    if ($photo_query->have_posts()) {
        while ($photo_query->have_posts()) {
            $photo_query->the_post();
            get_template_part('template-parts/photo-bloc');
        }
        wp_reset_postdata();
    }

    wp_die();
}
// Fonction AJAX pour récupérer les photos filtrées
function filtrer_photos() {

    // Vérification du nonce avant exécution de la requête
    check_ajax_referer('ajax-nonce', 'nonce');
    //error_log('Nonce check passed'); // Log pour vérifier que le nonce est passé

    $tax_query = array('relation' => 'AND');
    $order = $_POST['order'] ?? 'ASC';

    // Si une catégorie est présente et n'est pas égale à all
    if (isset($_POST['category']) && $_POST['category'] !== 'all') {
        $category = sanitize_text_field($_POST['category']);
        //error_log('Category: ' . $category);//Log pour vérifier la valeur
        $tax_query[] = array(
            'taxonomy' => 'categorie_photos',//categorie_photos a la place categorie
            'field' => 'slug',
            'terms' => $category,
        );
    }
    // Si un format est présent et n'est pas égal à all
    if (isset($_POST['format']) && $_POST['format'] !== 'all') {
        $format = sanitize_text_field($_POST['format']);
        //error_log('formats: ' . $format);//Log pour vérifier la valeur
        $tax_query[] = array(
            'taxonomy' => 'formats',
            'field' => 'slug',
            'terms' => $format,
        );
    }
    //error_log(print_r($tax_query, true)); // Log pour vérifier la structure de la tax_query
    $args = array(
        'post_type' => 'photographies',
        'posts_per_page' => 8,
        'orderby' => 'date',
        'order' => $order,
        'paged' => 1,
        'tax_query' => $tax_query,
    );
    //error_log(print_r($args, true)); // Log pour vérifier les arguments de la requête
    $photo_query = new WP_Query($args);
    //error_log('Query executed'); // Log pour vérifier que la requête est exécutée

    // Stockage du résultat en tampon temporairement
    ob_start();

    // Définition de la structure d'affichage des nouveaux éléments
    if ($photo_query->have_posts()) {
        while ($photo_query->have_posts()) {
            $photo_query->the_post();
            error_log('Post found: ' . get_the_title());//check post
            get_template_part('template-parts/photo-bloc');
        }
        wp_reset_postdata();
    } else {
        echo 'Aucune photo trouvée.';
    }

    // Récupération des informations en tampon dans une variable
    $output = ob_get_clean();

    // Affichage de la variable
    echo $output;

    wp_die();
}


// add action specifique ('appel f(ajax)_f(alancee)', nom de la f(a lancee))
add_action('wp_ajax_charger_plus', 'charger_plus');
add_action('wp_ajax_nopriv_charger_plus', 'charger_plus');
add_action('wp_ajax_filtrer_photos', 'filtrer_photos');
add_action('wp_ajax_nopriv_filtrer_photos', 'filtrer_photos');

//lancement des functions
add_action('wp_enqueue_scripts', 'theme_enqueue_styles');
add_action('init', 'register_custom_menus');
add_action('after_setup_theme', 'mytheme_custom_logo_setup');
add_action('wp_enqueue_scripts', 'theme_enqueue_script');
