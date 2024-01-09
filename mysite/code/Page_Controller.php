<?php

class Page_Controller extends ContentController
{
    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array();

    public function init()
    {
        parent::init();
        Requirements::css("{$this->ThemeDir()}/assets/images/favicon.ico");
        Requirements::css("https://fonts.gstatic.com/");
        Requirements::css("https://fonts.googleapis.com/css2?family=Philosopher:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap");
        Requirements::css("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400;1,600;1,700&amp;display=swap");
        Requirements::css("{$this->ThemeDir()}/assets/css/bootstrap.min.css");
        Requirements::css("{$this->ThemeDir()}/assets/css/swiper.min.css");
        Requirements::css("{$this->ThemeDir()}/assets/css/icofont.min.css");
        Requirements::css("{$this->ThemeDir()}/assets/css/odometer-theme-default.css");
        Requirements::css("{$this->ThemeDir()}/assets/css/glightbox.css");
        Requirements::css("{$this->ThemeDir()}/assets/css/margins-paddings.css");
        Requirements::css("{$this->ThemeDir()}/assets/css/aos.css");
        Requirements::css("{$this->ThemeDir()}/assets/css/style.css");
        Requirements::css("{$this->ThemeDir()}/assets/css/colors/oldRose.css");
        Requirements::css("{$this->ThemeDir()}/assets/css/fonts/philosopher-poppins.css");


        Requirements::javascript("{$this->ThemeDir()}/assets/js/jquery.min.js");
        Requirements::javascript("{$this->ThemeDir()}/assets/js/bootstrap.bundle.min.js");
        Requirements::javascript("{$this->ThemeDir()}/assets/js/onepageNav.js");
        Requirements::javascript("{$this->ThemeDir()}/assets/js/jquery.ajaxchimp.min.js");
        Requirements::javascript("{$this->ThemeDir()}/assets/js/glightbox.js");
        Requirements::javascript("{$this->ThemeDir()}/assets/js/swiper.min.js");
        Requirements::javascript("{$this->ThemeDir()}/assets/js/jquery.appear.min.js");
        Requirements::javascript("{$this->ThemeDir()}/assets/js/odometer.min.js");
        Requirements::javascript("{$this->ThemeDir()}/assets/js/aos.js");
        Requirements::javascript("{$this->ThemeDir()}/assets/js/custom.js");
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements
    }
}
