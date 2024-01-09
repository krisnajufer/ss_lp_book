<!-- ========== Header start ========== -->
<header class="header">
    <div class="container">
        <div class="row">
            <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="$AbsoluteBaseURL">
                    <!-- <h1 class="m-0">WONTED</h1> -->
                    <img src="$ThemeDir/assets/images/wonted-logo.png" alt="Wonted" />
                </a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="onepage-nav" class="navbar-nav menu ms-lg-auto">
                        <!-- <li class="nav-item active dropdown submenu">
                            <a class="nav-link dropdown-toggle" href="#hero" role="button" data-bs-toggle="dropdown" aria-expanded="false">Home
                            </a>
                            <span class="sub-menu-toggle dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="icofont-rounded-down"></i>
                            </span>
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a href="index-2.html" class="nav-link">Home One</a>
                                </li>
                                <li class="nav-item">
                                    <a href="index-3.html" class="nav-link">Home Two</a>
                                </li>
                                <li class="nav-item">
                                    <a href="index-4.html" class="nav-link">Home Three</a>
                                </li>
                                <li class="nav-item">
                                    <a href="index-5.html" class="nav-link">Home Four</a>
                                </li>
                                <li class="nav-item">
                                    <a href="index-6.html" class="nav-link">Home Five</a>
                                </li>
                                <li class="nav-item">
                                    <a href="index-7.html" class="nav-link">Home Six</a>
                                </li>
                            </ul>
                        </li> -->
                        <% loop $Menu(1) %>
                        <li class="nav-item">
                            <a class="$LinkingMode" href="$Link">$MenuTitle</a>
                        </li>
                        <% end_loop %>
                    </ul>
                </div>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span></span><span></span><span></span><span></span><span></span><span></span>
                </button>
            </nav>
        </div>
    </div>
</header>
<!-- ========== Header end ========== -->