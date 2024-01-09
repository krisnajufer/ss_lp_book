<?php

class BookComment extends DataObject
{
    private static $db = array(
        'Name' => 'Varchar',
        'Comment' => 'Text',
        'Date' => 'Date'
    );

    private static $has_one = array(
        'Book' => 'Book',
    );
}
