<div id="single-blog" class="section-padding single-blog">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <% with $Book %>
                <article>
                    <img class="img-fluid" src="$BookPhoto.SetHeight(400).URL" alt="Image" />
                    <ul class="single-blog__metainfo">
                        <li><i class="icofont-user-male"></i><a href="#">$Author.Name</a></li>
                        <li>
                            <i class="icofont-ui-calendar"></i><a href="#">$PublishDate.Long</a>
                        </li>
                    </ul>
                    <h2 class="display-5 single-blog__title">
                        $BookName
                    </h2>
                    <div class="single-blog__para">
                        $Description
                    </div>
                </article>
                <% end_with %>
                <div class="single-blog__share bg-one p-4">
                    <strong>Share:</strong>
                    <ul class="social-icon">
                        <li>
                            <a href="#"><i class="icofont-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="icofont-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="icofont-linkedin"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="icofont-youtube-play"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="icofont-whatsapp"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="single-blog__comment">
                    <div class="single-blog__comment__title">
                        <h4><span>3</span> Comments</h4>
                    </div>
                    <div class="single-blog__comment__wrap">
                        <% loop $Comment %>
                        <div class="single-blog__comment__item bg-one">
                            <!-- <div class="single-blog__comment__item__image">
                                <img class="img-fluid" src="$ThemeDir/assets/images/user-1.png" alt="mage" />
                            </div> -->
                            <div class="single-blog__comment__item__content">
                                <div class="comment-author-info">
                                    <div class="row align-items-start">
                                        <div class="col-md-9 col-12 order-md-1 order-1">
                                            <h5>$Name</h5>
                                            <p class="comment-date">$Date.Long</p>
                                        </div>
                                        <!-- <div class="col-md-3 col-sm-12 col-12 text-md-end order-md-2 order-sm-3 order-3">
                                            <a href="#cmt-form" class="reply-btn">Reply</a>
                                        </div> -->
                                        <div class="col-md-12 col-sm-12 col-12 order-md-3 order-sm-2 order-2">
                                            <div class="comment-text">
                                                <p>
                                                    $Comment
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% end_loop %>
                        <!-- <div class="single-blog__comment__item md-m-0px-l m-40px-l bg-one">
                            <div class="single-blog__comment__item__image">
                                <img class="img-fluid" src="assets/images/user-2.png" alt="mage" />
                            </div>
                            <div class="single-blog__comment__item__content">
                                <div class="comment-author-info">
                                    <div class="row align-items-start">
                                        <div class="col-md-9 col-12 order-md-1 order-1">
                                            <h5>Everly Leah</h5>
                                            <p class="comment-date">Mar 30, 2023 | 12:33 am</p>
                                        </div>
                                        <div class="col-md-3 col-sm-12 col-12 text-md-end order-md-2 order-sm-3 order-3">
                                            <a href="#cmt-form" class="reply-btn">Reply</a>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-12 order-md-3 order-sm-2 order-2">
                                            <div class="comment-text">
                                                <p>
                                                    Lorem ipsum dolor sit amet, consetetur
                                                    sadipscing elitr, sed diam nonumy eirmod tempor
                                                    invidunt ut labore et dolore magna aliquyam
                                                    erat.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-blog__comment__item bg-one">
                            <div class="single-blog__comment__item__image">
                                <img class="img-fluid" src="assets/images/user-1.png" alt="mage" />
                            </div>
                            <div class="single-blog__comment__item__content">
                                <div class="comment-author-info">
                                    <div class="row align-items-start">
                                        <div class="col-md-9 col-12 order-md-1 order-1">
                                            <h5>Michel Jackson</h5>
                                            <p class="comment-date">Feb 15, 2023 | 10:21 am</p>
                                        </div>
                                        <div class="col-md-3 col-sm-12 col-12 text-md-end order-md-2 order-sm-3 order-3">
                                            <a href="#cmt-form" class="reply-btn">Reply</a>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-12 order-md-3 order-sm-2 order-2">
                                            <div class="comment-text">
                                                <p>
                                                    Lorem ipsum dolor sit amet, consetetur
                                                    sadipscing elitr, sed diam nonumy eirmod tempor
                                                    invidunt ut labore et dolore magna aliquyam
                                                    erat.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                    <div class="single-blog__comment__form bg-one">
                        <div class="m-25px-b">

                            <h4>Leave A Comment</h4>
                        </div>
                        <form <% with $Form %> $FormAttributes <% end_with %> class="comment-form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <% with $Form %>
                                        $Fields.dataFieldByName(Name)
                                        $Fields.dataFieldByName(BookId)
                                        <% end_with %>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <% with $Form %>
                                        $Fields.dataFieldByName(Comment)
                                        <% end_with %>
                                    </div>
                                </div>
                            </div>
                            <div class="m-20px-t">
                                <% with $Form %>
                                $Actions
                                <% end_with %>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>