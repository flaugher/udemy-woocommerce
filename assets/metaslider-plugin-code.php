add_action( 'init', 'child_theme_init' );
function child_theme_init() {
  add_action( 'storefront_before_content', 'woa_add_full_slider', 5 );
}

// I got the ID from the slideshow page in MetaSlider.
function woa_add_full_slider() { ?>
  <div id="slider">
    <?php echo do_shortcode("[metaslider id=68 percentwidth=100 restrict_to=home]");?>
  </div>
<?php }
