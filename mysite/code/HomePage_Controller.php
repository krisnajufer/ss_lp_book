<?php

class HomePage_Controller extends Page_Controller
{
    private static $allowed_actions = array(
        'show',
        'addComment'
    );

    public function LatestOneBook()
    {
        return Book::get()->sort(array(
            'PublishDate' => 'Desc'
        ))->first();
    }

    public function LatestThreeBook()
    {
        return Book::get()->sort(array(
            'PublishDate' => 'Desc'
        ))->limit(4);
    }

    public function show(SS_HTTPRequest $request)
    {
        $book = Book::get()->byID($request->param('ID'));

        if (!$book) {
            return $this->httpError(404, 'That book could not be found');
        }

        $book_comment = BookComment::get()->filter([
            'BookID' => $request->param('ID')
        ]);

        $fields = new FieldList(
            TextField::create('Name', ''),
            TextareaField::create('Comment', ''),
            HiddenField::create('BookId', '', $request->param('ID'))
        );

        $actions = new FieldList(
            FormAction::create('addComment', 'POST')
                ->setUseButtonTag(true)
                ->addExtraClass('button button__primary text-white')
        );

        $form = new Form($this, 'addComment', $fields, $actions);
        $form->setTemplate('addComment');

        return array(
            "Book" => $book,
            "Form" => $form,
            "Comment" => $book_comment
        );
    }

    public function addComment(SS_HTTPRequest $request)
    {
        try {
            $comment = BookComment::create();
            $comment->Name = $request->postVar('Name');
            $comment->Comment = $request->postVar('Comment');
            $comment->BookID = $request->postVar('BookId');
            $comment->Date = date('Y-m-d');
            $comment->write();

            return $this->redirectBack();
        } catch (\Exception $ex) {
            //throw $th;
            echo $ex->getMessage();
        }
    }
}
