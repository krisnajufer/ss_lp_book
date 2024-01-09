<?php
class BookAdmin extends ModelAdmin
{
    private static $menu_title = 'Books';

    private static $url_segment = 'books';

    private static $managed_models = array(
        'Book'
    );
}
