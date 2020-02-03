# README

This is the site built in the Udemy course [How to build an ecommerce store with wordpress & woocommerce](https://www.udemy.com/course/how-to-build-an-ecommerce-store-with-wordpress-woocommerce/) by Tim Sharp.

### Requirements

Run the website locally using [Local by Flywheel](https://localbyflywheel.com).

### Plugins used

- Classic Editor
- Homepage Control
- MetaSlider
- Social Media Widget (Noah Kagan)
- UpdraftPlus Backup
- WooCommerce
- Wordfence Security

### Set up site

Start by creating the directory (from your command line) you want the site files to go into (e.g. ~/projects/wordpress/udemy_woocommerce/dog_adorer).  Then, when you create the site in the Local app, choose "Advanced Options" when naming the site and select that directory.

If you've deleted the site from the Local app, simply rebuild the site, point it to your destination directory, and clone the site from Github into that directory.

### Run site

Start Local app ```local``` and select "DOG ADORER".

### Lesson Notes

#### Lesson 7

- WP Posts are for blogging.  If you're building a business site and won't have a blog, you won't be using Posts, you'll be using Pages.
- WP Comments are also mostly used for blogging.
- He installs WooCommerce plugin.

#### Lesson 10

- He recommends StoreFront theme because it works well with WC.

#### Lesson 13

- He hired a logo designer for $5 on fiverr.com.

#### Lesson 17

- Simple products: Products that don't vary (e.g. only one color, only one size, etc.)
- Variable products: Products that do.  Creating a variable product causes an option pulldown to be created on the page where a user can select an option.

He usually keeps product descriptions short and punchy as the image is what usually sells the product.

#### Lesson 19

I didn't see my cart anywhere.

#### Lesson 23

He gets some images from istockphotos.com and shutterstock.com.  They have better quality photos (at a price).
Buying high-quality images that you own and are free to use as you wish is a good investment.

#### Lesson 24

The style.css file he refers to is here:

  /Users/flaugher/projects/wordpress/udemy_woocommerce/dog_adorer/app/public/wp-content/themes/storefront/style.css

I backed it up to a .bak file.

Note that Theme Functions he modifies is near the top of the menu on the right side, not between Footer and Header as his video shows.  I just went to the directory shown above from my command line, backed up the functions.php file, and edited the file directly.

Note too that he has you paste his custom code into the bottom of the functions.php file.  But right above that it says not to do what he's telling you to do because this code may get overridden when you update Storefront.  Therefore, if the slider breaks in the future after you've updated Storefront, this is why.

This is the code he has you add to the bottom of functions.php.

    add_action( 'init', 'child_theme_init' );
    function child_theme_init() {
      add_action( 'storefront_before_content', 'woa_add_full_slider', 5 );
    }

    function woa_add_full_slider() { ?>
      <div id="slider">
        <?php echo do_shortcode("[metaslider id=68 percentwidth=100 restrict_to=home]");?>
      </div>
    <?php }

Note that your replaced id=XXX with the metaslider ID which is shown on the MetaSlider page in the How to Use pane.

    id=68

#### Lesson 25

Get some idea of what site looks like on different size devices by going to Appearance > Customize and then clicking on the device icons at the bottom of the left menu bar.

#### Lesson 26

He recommends AliDropShip and WooDropShip for drop-shipping.

#### Lesson 30

The advantage in signing up for Stripe or Paypal is that you don't have to set up your own merchant account in order to receive payments.

### Lessons 35 - 37

Backup plugin:
UpdraftPlus WordPress Backup Plugin

Keep at least 7 backups.

Security:
Wordfence Security

SSL:
No plugin required.
His webhost tmdhosting.com, uses Let's Encrypt to create certificates for his sites.

### Lessons 41

Add reviews to a product at the bottom of the product's page.  Go to Products > (product page) > Reviews (at the bottom)

### Lessons 44

Recommends freelancer.com if you want to advertise as a WP developer.


### Notes

- He recommends setting up "sales", "billing", and "support" emails.
- He has other Udemy courses and a YouTube channel.

### Criticisms

Screens no longer match.
Instructor doesn't understand what's going on under the hood and can't help you resolve problems.

### Instructor
https://www.facebook.com/groups/EcommerceMindset/
https://www.youtube.com/ecommercemindset
https://ecommercemindset.com/

### Resources

[His finished version of the example site](https://dog-adorer.com)
[woocommerce.com](https://woocommerce.com/)
[WordPress.org Storefront Forum](https://wordpress.org/support/theme/storefront/)
[codable.io WooCommerce developers](https://codeable.io/developers/woocommerce/)
[elementor](https://elementor.com/) -- [Guy on reddit](https://www.reddit.com/r/woocommerce/comments/excw63/does_woocommerce_include_a_cart_feature_by_default/) uses their "Pro" version to build custom WP pages
[TMD Hosting](https://www.tmdhosting.com/) -- Webhosting that instructor uses in the course
[Grasshopper](https://grasshopper.com/) -- Gives you a telephone number to put on your site
[Wordpress advice - Is the market oversaturated with Wordpress designers or are there still opportunities to be had?](https://www.reddit.com/r/digitalnomad/comments/bxrdau/wordpress_advice_is_the_market_oversaturated_with/)
