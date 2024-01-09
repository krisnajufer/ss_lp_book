<!-- ========== Hero section start ========== -->
<section id="hero" class="hero hero__padding overflow-hidden position-relative bg-one">
    <div class="circle x1"></div>
    <div class="circle x2"></div>
    <div class="circle x3"></div>
    <div class="circle x4"></div>
    <div class="circle x5"></div>
    <div class="container">
        <% loop $LatestOneBook %>
        <div class="row gx-5 align-items-center">
            <div class="col-lg-6 mb-4 mb-lg-0">
                <div class="hero__content position-relative">
                    <div class="badge-text mb-2 fs-3 fw-bold" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
                        Hello,
                    </div>
                    <h1 class="display-4 mb-4 text-capitalize" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="650">
                        I Am $Author.Name
                    </h1>
                    <p class="text-muted mb-3" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="700">
                        $Description
                    </p>
                </div>
            </div>
            <div class="col-lg-6 d-flex" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="700">
                <div class="hero__book">
                    <div class="hero__book--wrapper">
                        <img class="img-fluid" src="$BookPhoto.url" alt="" />
                    </div>
                </div>
                <div class="hero__author text-center">
                    <div class="hero__author--inner hero__author--inner2">
                        <div class="hero__author--inner--pic hero__author--inner2--pic d-flex align-items-end justify-content-center" style="background-image: url($ThemeDir/assets/images/writer-2.png)"></div>
                        <div class="frame frame-1"></div>
                        <div class="frame frame-2"></div>
                        <div class="frame frame-3"></div>
                    </div>
                </div>
            </div>
        </div>
        <% end_loop %>
    </div>
</section>
<!-- ========== Hero section end ========== -->
<!-- ========== Author section start ========== -->
<section id="about" class="section-padding authorv2">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 offset-xl-3 col-lg-10 offset-lg-1">
                <div class="section-title-center text-center">
                    <span data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150">About me</span>
                    <h2 class="display-6" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                        Learn about the book writer
                    </h2>
                    <div class="section-divider divider-traingle" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="250"></div>
                </div>
            </div>
        </div>
        <% loop $LatestOneBook %>
        <div class="row gx-5">
            <div class="col-lg-6 mb-4 mb-lg-0" data-aos="fade-right" data-aos-duration="1000" data-aos-delay="200">
                <div class="authorv2__image">
                    <img class="img-fluid" src="$Author.AuthorPhoto.setHeight(386).URL" alt="Author Image" />
                    <a href="https://youtu.be/qg0_FinB6EE" class="glightbox3 video-btn">
                        <i class="icofont-play"></i></a>
                    <div class="promo-video">
                        <div class="waves-block">
                            <div class="waves wave-1"></div>
                            <div class="waves wave-2"></div>
                            <div class="waves wave-3"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="200">
                <p>
                    $Description
                </p>
                <div class="authorv2__content">
                    <div class="authorv2__list">
                        <div class="row">
                            <div class="col-6 mb-3">
                                <h4>Name:</h4>
                                <p class="mb-0">$Author.Name</p>
                            </div>
                            <div class="col-6 mb-3">
                                <h4>Born:</h4>
                                <p class="mb-0">$Author.BornDate.Long</p>
                            </div>
                            <div class="col-6 mb-3">
                                <h4>Country:</h4>
                                <p class="mb-0">$Author.Country</p>
                            </div>
                            <div class="col-6 mb-3">
                                <h4>Email ID:</h4>
                                <p class="mb-0">$Author.Email</p>
                            </div>
                            <div class="col-6 mb-3">
                                <h4>Languages:</h4>
                                <p class="mb-0">$Author.Language</p>
                            </div>
                            <div class="col-6">
                                <h4>Address:</h4>
                                <p class="mb-0">$Author.Address</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <% end_loop %>
    </div>
</section>
<!-- ========== Author section end ========== -->
<!-- ========== Books section start ========== -->
<section id="books" class="booksv1 section-padding bg-one">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 offset-xl-3 col-lg-10 offset-lg-1">
                <div class="section-title-center text-center">
                    <span data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150">Books</span>
                    <h2 class="display-6" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                        Latest released books
                    </h2>
                    <div class="section-divider divider-traingle" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="250"></div>
                </div>
            </div>
        </div>
        <div class="row gx-5">
            <div class="col-lg-12" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="200">
                <div class="booksv1__contnet">
                    <div class="booksv1__contnet--badge mb-0">
                        Best selling books
                    </div>
                    <h3 class="display-6 m-30px-b">Books released in 2023</h3>
                    <% loop $LatestThreeBook %>
                    <div class="booksv1__item--wrap">
                        <div class="booksv1__item">
                            <div class="booksv1__item--icon">
                                <i class="icofont-touch"></i>
                            </div>
                            <div class="booksv1__item--text">
                                <h3>$BookName</h3>
                                <p>
                                    $Description
                                </p>
                            </div>
                        </div>
                    </div>
                    <% end_loop %>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ========== Books section end ========== -->

<!-- ========== Books section start ========== -->
<section class="books section-padding bg-one">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 offset-xl-3 col-lg-10 offset-lg-1">
                <div class="section-title-center text-center">
                    <span data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150">Books</span>
                    <h2 class="display-6" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                        Weekly selling books at Amazon
                    </h2>
                    <div class="section-divider divider-traingle" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="250"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <% loop $LatestThreeBook %>
            <div class="col-md-6 col-lg-3 mb-4 mb-lg-0" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                <div class="books__book h-100 translateEffect1">
                    <a href="$Link">
                        <img class="img-fluid" src="$BookPhoto.SetHeight(250).URL" alt="Book 3" />
                    </a>
                    <p class="books__book__subtitle">$BookName</p>
                </div>
            </div>
            <% end_loop %>
        </div>
    </div>
</section>
<!-- ========== Books section end ========== -->