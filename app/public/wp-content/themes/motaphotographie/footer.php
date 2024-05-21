</main>

        <footer>
            <!-- Affichage du menu du footer -->
            <div>
                <?php
                    wp_nav_menu(array(
                        'theme_location' => 'menu_secondaire',
                        'container' => false,
                        'menu_class' => 'menu',
                    ));
                ?>
            </div>
        </footer>

    </body>
</html>