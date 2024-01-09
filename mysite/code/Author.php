<?php

class Author extends DataObject
{
    private static $db = array(
        'Name' => 'Varchar',
        'Country' => 'Varchar',
        'BornDate' => 'Date',
        'Language' => 'Varchar',
        'Email' => 'Varchar',
        'Address' => 'Text',
    );

    private static $has_one = array(
        'AuthorPhoto' => 'Image'
    );

    private static $has_many = array(
        'Book' => 'Book'
    );

    public function getCMSFields()
    {
        $fields = FieldList::create(TabSet::create('Root'));
        $fields->addFieldsToTab('Root.Main', array(
            TextField::create('Name', 'Name of Author'),
            TextField::create('Country', 'Country of Author'),
            DateField::create('BornDate', 'Born Date of Author')
                ->setConfig('showcalendar', true)
                ->setConfig('dateformat', 'd MMMM yyyy'),
            TextField::create('Language', 'Language of Author'),
            TextField::create('Email', 'Email of Author'),
            TextareaField::create('Address', 'Address of Author'),
        ));

        $fields->addFieldToTab('Root.Photos', $upload = UploadField::create(
            'AuthorPhoto',
            'Author photo'
        ));

        $upload->getValidator()->setAllowedExtensions(array(
            'png', 'jpeg', 'jpg', 'gif', 'webp'
        ));
        $upload->setFolderName('author-photos');

        return $fields;
    }
}
