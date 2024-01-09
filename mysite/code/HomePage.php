<?php

class HomePage extends Page
{
    private static $db = array(
        'Description' => 'Text',
        'Name' => 'Varchar',
        'BornDate' => 'Date',
        'Country' => 'Varchar',
        'Language' => 'Varchar',
        'Address' => 'Text'
    );

    private static $has_one = array(
        'PhotoBook' => 'Image',
        'PhotoAuthor' => 'Image',
    );

    private static $has_many = array(
        'Book' => 'Book'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab(
            'Root.Main',
            TextField::create('Name', 'Author of Book'),
            'Content'
        );

        $fields->addFieldToTab(
            'Root.Main',
            DateField::create('BornDate', 'Date of Author')
                ->setConfig('showcalendar', true)
                ->setConfig('dateformat', 'd MMMM yyyy'),
            'Content'
        );

        $fields->addFieldToTab(
            'Root.Main',
            TextField::create('Country', 'Country of Author'),
            'Content'
        );

        $fields->addFieldToTab(
            'Root.Main',
            TextField::create('Language', 'Language of Author'),
            'Content'
        );

        $fields->addFieldToTab(
            'Root.Main',
            TextareaField::create('Address', 'Address of Author'),
            'Content'
        );

        $fields->addFieldToTab(
            'Root.Main',
            TextareaField::create('Description', 'Description of Book'),
            'Content'
        );

        $fields->addFieldToTab(
            'Root.Attachments',
            $photoBook = UploadField::create('PhotoBook', 'Photo of Book')
        );

        $photoBook->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg', 'webp'));
        $photoBook->setFolderName('book-photos');

        $fields->addFieldToTab(
            'Root.Attachments',
            $photoAuthor = UploadField::create('PhotoAuthor', 'Photo of Author')
        );

        $photoAuthor->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg', 'webp'));
        $photoAuthor->setFolderName('author-photos');

        return $fields;
    }
}
