<?php
/**
 * Template part for displaying the contact section
 * 
 * 
 * @package motaphoto theme
 */
?>
<div id="modale">
    <button class="mod-button">X</button>
    <div class="modHeader">
        <img class="modLogo" src="<?php echo get_stylesheet_directory_uri() . '/assets/images/contact-header.png' ?>" alt="contact"/>
        <div class="modForm">
        <?php
            echo do_shortcode('[contact-form-7 id="7509437" title="Contact form 1"]');
        ?>
        </div>
    </div>
</div>