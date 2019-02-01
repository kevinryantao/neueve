/*!
 *
 * Sell theme v1.2.2
 * Copyright 2018 - Bootstrapious.com
 * 
 */

$(function () {

    // ------------------------------------------------------- //
    //   Multilevel dropdowns
    // ------------------------------------------------------ //

    $(".dropdown-menu [data-toggle='dropdown']").on("click", function (event) {
        event.preventDefault();
        event.stopPropagation();

        $(this).siblings().toggleClass("show");


        if (!$(this).next().hasClass('show')) {
            $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
        }
        $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
            $('.dropdown-submenu .show').removeClass("show");
        });

    });

    // ------------------------------------------------------- //
    //   Transparent navbar dropdowns 
    //
    //   = do not make navbar 
    //   transparent if dropdown's still open 
    //   / make transparent again when dropdown's closed
    // ------------------------------------------------------ //

    var navbar = $('.navbar'),
        navbarCollapse = $('.navbar-collapse');

    $('.navbar.bg-transparent .dropdown').on('show.bs.dropdown', function () {
        makeNavbarWhite();
    });

    $('.navbar.bg-transparent .dropdown').on('hide.bs.dropdown', function () {
        // if we're not on mobile, make navbar transparent 
        // after we close the dropdown

        if (!navbarCollapse.hasClass('show')) {
            makeNavbarTransparent();
        }
    });

    $('.navbar.bg-transparent .navbar-collapse').on('show.bs.collapse', function () {
        makeNavbarWhite();
    });


    $('.navbar.bg-transparent .navbar-collapse').on('hide.bs.collapse', function () {
        makeNavbarTransparent();
    });

    function makeNavbarWhite() {
        navbar.addClass('was-transparent');
        if (navbar.hasClass('navbar-dark')) {
            navbar.addClass('was-navbar-dark');
            navbar.removeClass('navbar-dark');
        } else {
            navbar.addClass('was-navbar-light');
        }

        navbar.removeClass('bg-transparent');

        navbar.addClass('bg-white');
        navbar.addClass('navbar-light');
    }

    function makeNavbarTransparent() {
        navbar.removeClass('bg-white');
        navbar.removeClass('navbar-light');
        navbar.removeClass('was-transparent');

        navbar.addClass('bg-transparent');
        if (navbar.hasClass('was-navbar-dark')) {
            navbar.addClass('navbar-dark');
        } else {
            navbar.addClass('navbar-light');
        }

    }


    // ------------------------------------------------------- //
    //   Open & Close Fullscreen Navbar Menu
    // ------------------------------------------------------ //

    $('.navbar-collapse-fullscreen').on('show.bs.collapse', function () {
        $(document.body).addClass('overflow-hidden')
    })
    $('.navbar-collapse-fullscreen').on('hide.bs.collapse', function () {
        $(document.body).removeClass('overflow-hidden')
    })

    // ------------------------------------------------------- //
    //   Open & Close Search Panel
    // ------------------------------------------------------ //
    $('[data-toggle="search"]').on('click', function () {
        $('.search-area-wrapper').show();
    });

    $('.search-area-wrapper .close-btn').on('click', function () {
        $('.search-area-wrapper').hide();
    });

    // ------------------------------------------------------- //
    //   Ekko Lightbox
    // ------------------------------------------------------ //

    $(document).on('click', '[data-toggle="lightbox"]', function (event) {
        event.preventDefault();
        $(this).ekkoLightbox({
            alwaysShowClose: true,
            leftArrow: '<span><img src="' + basePath + 'img/prev.svg" class="nav-arrow nav-arrow-left" alt="" width="50"></span>',
            rightArrow: '<span><img src="' + basePath + 'img/next.svg" class="nav-arrow nav-arrow-right" alt="" width="50"></span>'
        });
    });



    // ------------------------------------------------------- //
    //   Make a sticky navbar on scrolling
    // ------------------------------------------------------ //
    $(window).scroll(function () {

        var body = $('body'),
            stickyNavbar = $('nav.navbar-sticky'),
            header = $('.header'),
            topbar = $('.top-bar');

        function makeItFixed(x) {
            if ($(window).scrollTop() > x) {
                stickyNavbar.addClass('fixed-top');
                if (!header.hasClass('header-absolute')) {
                    body.css('padding-top', stickyNavbar.outerHeight());
                    body.data('smooth-scroll-offset', stickyNavbar.outerHeight());
                }
            } else {
                stickyNavbar.removeClass('fixed-top');
                body.css('padding-top', '0');
            }
        }

        // if .top-bar exists, affix the navbar when we scroll past .top-bar
        // else affix it immediately
        if (stickyNavbar.length > 0 && topbar.length > 0) {
            makeItFixed(topbar.outerHeight());
        } else if (stickyNavbar.length > 0) {
            makeItFixed(0);
        }
    });


    // ------------------------------------------------------- //
    //   Increase/Decrease product amount
    // ------------------------------------------------------ //
    $('.btn-items-decrease').on('click', function () {
        var input = $(this).siblings('.input-items');
        if (parseInt(input.val(), 10) >= 1) {
            input.val(parseInt(input.val(), 10) - 1);
        }
    });

    $('.btn-items-increase').on('click', function () {
        var input = $(this).siblings('.input-items');
        input.val(parseInt(input.val(), 10) + 1);
    });

    // ------------------------------------------------------- //
    //   Scroll to top button
    // ------------------------------------------------------ //

    $(window).on('scroll', function () {
        if ($(window).scrollTop() >= 1500) {
            $('#scrollTop').fadeIn();
        } else {
            $('#scrollTop').fadeOut();
        }
    });


    $('#scrollTop').on('click', function () {
        $('html, body').animate({
            scrollTop: 0
        }, 1000);
    });

    // ------------------------------------------------------- //
    //    Colour form control 
    // ------------------------------------------------------ //

    $('.btn-colour').on('click', function (e) {
        var button = $(this);

        if (button.attr('data-allow-multiple') === undefined) {
            button.parents('.colours-wrapper').find('.btn-colour').removeClass('active');
        }

        button.toggleClass('active');
    });

    // ------------------------------------------------------- //
    //  Button-style form labels used in detail.html
    // ------------------------------------------------------ //

    $('.detail-option-btn-label').on('click', function () {
        var button = $(this);

        button.parents('.detail-option').find('.detail-option-btn-label').removeClass('active');

        button.toggleClass('active');
    });


    // ------------------------------------------------------- //
    //   Circle Slider
    // ------------------------------------------------------ //
    var circleSlider = $('.circle-slider');
    circleSlider.on({
        'initialized.owl.carousel': function () {
            // we add ..mh-full-screen to the parent section to avoid items below the carousel jumping before the carousel loads
            circleSlider.parents('section').removeClass('mh-full-screen');
        }
    }).owlCarousel({
        loop: true,
        margin: 0,
        smartSpeed: 500,
        responsiveClass: true,
        navText: ['<img src="' + basePath + 'img/prev-dark.svg" alt="" width="50">', '<img src="' + basePath + 'img/next-dark.svg" alt="" width="50">'],
        responsive: {
            0: {
                items: 1,
                nav: false,
                dots: true
            },
            600: {
                items: 1,
                nav: false,
                dots: true
            },
            1120: {
                items: 1,
                dots: false,
                nav: true
            }
        },
        onRefresh: function () {
            circleSlider.find('.item').height('');
        },
        onRefreshed: function () {
            var maxHeight = 0;
            var items = circleSlider.find('.item');
            items.each(function () {
                var itemHeight = $(this).outerHeight();
                if (itemHeight > maxHeight) {
                    maxHeight = itemHeight;
                }
            });
            items.height(maxHeight);
        }
    });
    // ------------------------------------------------------- //
    //   Home Slider
    // ------------------------------------------------------ //
    var homeSlider = $('.home-slider');
    homeSlider.owlCarousel({
        loop: true,
        margin: 0,
        smartSpeed: 500,
        responsiveClass: true,
        navText: ['<img src="' + basePath + 'img/prev.svg" alt="" width="50">', '<img src="' + basePath + 'img/next.svg" alt="" width="50">'],
        responsive: {
            0: {
                items: 1,
                nav: false,
                dots: true
            },
            600: {
                items: 1,
                nav: false,
                dots: true
            },
            1120: {
                items: 1,
                dots: false,
                nav: true
            }
        },
        onRefresh: function () {
            homeSlider.find('.item').height('');
        },
        onRefreshed: function () {
            var maxHeight = 0;
            var items = homeSlider.find('.item');
            items.each(function () {
                var itemHeight = $(this).height();
                if (itemHeight > maxHeight) {
                    maxHeight = itemHeight;
                }
            });
            items.height(maxHeight);
        }
    });

    // ------------------------------------------------------- //
    //   Home Full Slider
    // ------------------------------------------------------ //

    var homeFullSlider = $('.home-full-slider');
    homeFullSlider.owlCarousel({
        loop: true,
        margin: 0,
        smartSpeed: 500,
        responsiveClass: true,
        navText: ['<img src="' + basePath + 'img/prev.svg" alt="" width="50">', '<img src="' + basePath + 'img/next.svg" alt="" width="50">'],
        responsive: {
            0: {
                items: 1,
                nav: false,
                dots: true
            },
            600: {
                items: 1,
                nav: false,
                dots: true
            },
            1120: {
                items: 1,
                dots: false,
                nav: true
            }
        },
        onRefresh: function () {
            homeFullSlider.find('.item').height('');
        },
        onRefreshed: function () {
            var maxHeight = 0;
            var items = homeFullSlider.find('.item');
            items.each(function () {
                var itemHeight = $(this).height();
                if (itemHeight > maxHeight) {
                    maxHeight = itemHeight;
                }
            });
            items.height(maxHeight);
        }
    });


    // ------------------------------------------------------- //
    //   Product Slider
    // ------------------------------------------------------ //
    $('.product-slider').owlCarousel({
        loop: false,
        margin: 0,
        nav: false,
        dots: true,
        navText: ['<img src="' + basePath + 'img/prev.svg" alt="" width="50">', '<img src="' + basePath + 'img/next.svg" alt="" width="50">'],
        smartSpeed: 400,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 5
            }
        }
    });

    // ------------------------------------------------------- //
    // Detail Carousel with thumbs
    // ------------------------------------------------------ //
    $('.detail-slider').owlCarousel({
        loop: true,
        items: 1,
        thumbs: true,
        thumbsPrerendered: true,
        dots: false,
        responsiveClass: false
    });


    // ------------------------------------------------------- //
    // Detail Full Carousel
    // ------------------------------------------------------ //
    $('.detail-full').owlCarousel({
        loop: true,
        items: 1,
        dots: true,
        responsiveClass: false
    });

    // ------------------------------------------------------- //
    // Brands Slider
    // ------------------------------------------------------ -//

    var brandsSlider = $('.brands-slider');
    brandsSlider.owlCarousel({
        loop: true,
        margin: 20,
        dots: true,
        nav: false,
        smartSpeed: 400,
        responsiveClass: true,
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 6,
                loop: false
            }
        },
        onRefresh: function () {
            brandsSlider.find('.item').height('');
        },
        onRefreshed: function () {
            var maxHeight = 0;
            var items = brandsSlider.find('.item');
            items.each(function () {
                var itemHeight = $(this).height();
                if (itemHeight > maxHeight) {
                    maxHeight = itemHeight;
                }
            });
            if (maxHeight > 0) {
                items.height(maxHeight);
            }
        }
    });

    // ------------------------------------------------------- //
    //   Bootstrap tooltips
    // ------------------------------------------------------- //

    $('[data-toggle="tooltip"]').tooltip();

    // ------------------------------------------------------- //
    //   Smooth Scroll
    // ------------------------------------------------------- //

    var smoothScroll = new SmoothScroll('a[data-smooth-scroll]', {
        offset: 80
    });

    // ------------------------------------------------------- //
    //   Object Fit Images
    // ------------------------------------------------------- //    

    objectFitImages();


    // ------------------------------------------------------- //
    // Google Maps
    // ------------------------------------------------------ //
    if ($('#map').length > 0) {


        function initMap() {

            var location = new google.maps.LatLng(50.0875726, 14.4189987);

            var mapCanvas = document.getElementById('map');
            var mapOptions = {
                center: location,
                zoom: 16,
                panControl: false,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(mapCanvas, mapOptions);

            var markerImage = basePath + 'img/marker.png';

            var marker = new google.maps.Marker({
                position: location,
                map: map,
                icon: markerImage
            });

            var contentString = '<div class="info-window">' +
                '<h3>Info Window Content</h3>' +
                '<div class="info-content">' +
                '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>' +
                '</div>' +
                '</div>';

            var infowindow = new google.maps.InfoWindow({
                content: contentString,
                maxWidth: 400
            });

            marker.addListener('click', function () {
                infowindow.open(map, marker);
            });

            var styles = [{
                "featureType": "landscape",
                "stylers": [{
                    "saturation": -100
                }, {
                    "lightness": 0
                }, {
                    "visibility": "on"
                }]
            }, {
                "featureType": "poi",
                "stylers": [{
                    "saturation": -100
                }, {
                    "lightness": 51
                }, {
                    "visibility": "off"
                }]
            }, {
                "featureType": "road.highway",
                "stylers": [{
                    "saturation": -100
                }, {
                    "visibility": "simplified"
                }]
            }, {
                "featureType": "road.arterial",
                "stylers": [{
                    "saturation": -100
                }, {
                    "lightness": 10
                }, {
                    "visibility": "on"
                }]
            }, {
                "featureType": "road.local",
                "stylers": [{
                    "saturation": -100
                }, {
                    "lightness": 40
                }, {
                    "visibility": "on"
                }]
            }, {
                "featureType": "transit",
                "stylers": [{
                    "saturation": -100
                }, {
                    "visibility": "simplified"
                }]
            }, {
                "featureType": "administrative.province",
                "stylers": [{
                    "visibility": "off"
                }]
            }, {
                "featureType": "water",
                "elementType": "labels",
                "stylers": [{
                    "visibility": "on"
                }, {
                    "lightness": -25
                }, {
                    "saturation": -100
                }]
            }, {
                "featureType": "water",
                "elementType": "geometry",
                "stylers": [{
                    "hue": "#ffff00"
                }, {
                    "lightness": -15
                }, {
                    "saturation": -97
                }]
            }];

            map.set('styles', styles);


        }

        google.maps.event.addDomListener(window, 'load', initMap);


    }

});