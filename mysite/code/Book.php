<?php

class Book extends DataObject
{
    private static $db = array(
        'BookName' => 'Varchar',
        'Description' => 'HTMLText',
        'PublishDate' => 'Date'
    );

    private static $has_one = array(
        'BookPhoto' => 'Image',
        'Author' => 'Author',
        'HomePage' => 'HomePage'
    );

    private static $has_many = array(
        'BookComment' => 'BookComment'
    );

    private static $summary_fields = array(
        'BookName' => 'Name of Book',
        'Description' => 'Description',
        'PublishDate' => 'Publish',
        'Author.Name' => 'Author'
    );


    public function getCMSFields()
    {
        $fields = FieldList::create(TabSet::create('Root'));
        $fields->addFieldsToTab('Root.Main', array(
            TextField::create('BookName', 'Name of Book'),
            HtmlEditorField::create('Description', 'Description of Book'),
            DateField::create('PublishDate', 'Publish Date')
                ->setConfig('showcalendar', true)
                ->setConfig('dateformat', 'd MMMM yyyy'),
            DropdownField::create('AuthorID', 'Author')
                ->setSource(Author::get()->map('ID', 'Title'))
                ->setEmptyString('-- Select a Author --'),
        ));

        $fields->addFieldToTab('Root.Photos', $upload = UploadField::create(
            'BookPhoto',
            'Book photo'
        ));

        $upload->getValidator()->setAllowedExtensions(array(
            'png', 'jpeg', 'jpg', 'gif', 'webp'
        ));

        $upload->setFolderName('book-photos');

        return $fields;
    }

    public function Link()
    {
        return $this->HomePage()->Link('home/show/' . $this->ID);
    }

    public function LinkingMode()
    {
        return Controller::curr()->getRequest()->param('ID') == $this->ID ? 'current' : 'link';
    }
}
