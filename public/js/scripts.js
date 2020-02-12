$(document).ready(function() {
    $('#close-dialog').click(function(){			
        $('#mymodal').modal('hide');
    });

    $(".box-filter").click(function(){				
        $(this).find("input").attr("checked","checked");
    });	
});

/**
 * Back To Top
 */
jQuery(document).ready(function() {
    var offset = 220;
    var duration = 500;
    jQuery(window).scroll(function() {
        if (jQuery(this).scrollTop() > offset) {
            jQuery('.back-to-top').fadeIn(duration);
        } else {
            jQuery('.back-to-top').fadeOut(duration);
        }
    });

    jQuery('.back-to-top').click(function(event) {
        event.preventDefault();
        jQuery('html, body').animate({scrollTop: 0}, duration);
        return false;
    })
})

/**
 * WOW JS
 */
jQuery(document).ready(function() {
    var a,
        b,
        c = function(a, b) {
            return function() {
                return a.apply(b, arguments);
            };
        };
    (a = (function() {
        function a() {}
        return (
            (a.prototype.extend = function(a, b) {
                var c, d;
                for (c in a) (d = a[c]), null != d && (b[c] = d);
                return b;
            }),
            (a.prototype.isMobile = function(a) {
                return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(
                    a
                );
            }),
            a
        );
    })()),
        (b =
            this.WeakMap ||
            (b = (function() {
                function a() {
                    (this.keys = []), (this.values = []);
                }
                return (
                    (a.prototype.get = function(a) {
                        var b, c, d, e, f;
                        for (
                            f = this.keys, b = d = 0, e = f.length;
                            e > d;
                            b = ++d
                        )
                            if (((c = f[b]), c === a)) return this.values[b];
                    }),
                    (a.prototype.set = function(a, b) {
                        var c, d, e, f, g;
                        for (
                            g = this.keys, c = e = 0, f = g.length;
                            f > e;
                            c = ++e
                        )
                            if (((d = g[c]), d === a))
                                return void (this.values[c] = b);
                        return this.keys.push(a), this.values.push(b);
                    }),
                    a
                );
            })())),
        (this.WOW = (function() {
            function d(a) {
                null == a && (a = {}),
                    (this.scrollCallback = c(this.scrollCallback, this)),
                    (this.scrollHandler = c(this.scrollHandler, this)),
                    (this.start = c(this.start, this)),
                    (this.scrolled = !0),
                    (this.config = this.util().extend(a, this.defaults)),
                    (this.animationNameCache = new b());
            }
            return (
                (d.prototype.defaults = {
                    boxClass: "wow",
                    animateClass: "animated",
                    offset: 0,
                    mobile: !0
                }),
                (d.prototype.init = function() {
                    var a;
                    return (
                        (this.element = window.document.documentElement),
                        "interactive" === (a = document.readyState) ||
                        "complete" === a
                            ? this.start()
                            : document.addEventListener(
                                  "DOMContentLoaded",
                                  this.start
                              )
                    );
                }),
                (d.prototype.start = function() {
                    var a, b, c, d;
                    if (
                        ((this.boxes = this.element.getElementsByClassName(
                            this.config.boxClass
                        )),
                        this.boxes.length)
                    ) {
                        if (this.disabled()) return this.resetStyle();
                        for (d = this.boxes, b = 0, c = d.length; c > b; b++)
                            (a = d[b]), this.applyStyle(a, !0);
                        return (
                            window.addEventListener(
                                "scroll",
                                this.scrollHandler,
                                !1
                            ),
                            window.addEventListener(
                                "resize",
                                this.scrollHandler,
                                !1
                            ),
                            (this.interval = setInterval(
                                this.scrollCallback,
                                50
                            ))
                        );
                    }
                }),
                (d.prototype.stop = function() {
                    return (
                        window.removeEventListener(
                            "scroll",
                            this.scrollHandler,
                            !1
                        ),
                        window.removeEventListener(
                            "resize",
                            this.scrollHandler,
                            !1
                        ),
                        null != this.interval
                            ? clearInterval(this.interval)
                            : void 0
                    );
                }),
                (d.prototype.show = function(a) {
                    return (
                        this.applyStyle(a),
                        (a.className =
                            "" + a.className + " " + this.config.animateClass)
                    );
                }),
                (d.prototype.applyStyle = function(a, b) {
                    var c, d, e;
                    return (
                        (d = a.getAttribute("data-wow-duration")),
                        (c = a.getAttribute("data-wow-delay")),
                        (e = a.getAttribute("data-wow-iteration")),
                        this.animate(
                            (function(f) {
                                return function() {
                                    return f.customStyle(a, b, d, c, e);
                                };
                            })(this)
                        )
                    );
                }),
                (d.prototype.animate = (function() {
                    return "requestAnimationFrame" in window
                        ? function(a) {
                              return window.requestAnimationFrame(a);
                          }
                        : function(a) {
                              return a();
                          };
                })()),
                (d.prototype.resetStyle = function() {
                    var a, b, c, d, e;
                    for (
                        d = this.boxes, e = [], b = 0, c = d.length;
                        c > b;
                        b++
                    )
                        (a = d[b]),
                            e.push(
                                a.setAttribute("style", "visibility: visible;")
                            );
                    return e;
                }),
                (d.prototype.customStyle = function(a, b, c, d, e) {
                    return (
                        b && this.cacheAnimationName(a),
                        (a.style.visibility = b ? "hidden" : "visible"),
                        c && this.vendorSet(a.style, { animationDuration: c }),
                        d && this.vendorSet(a.style, { animationDelay: d }),
                        e &&
                            this.vendorSet(a.style, {
                                animationIterationCount: e
                            }),
                        this.vendorSet(a.style, {
                            animationName: b
                                ? "none"
                                : this.cachedAnimationName(a)
                        }),
                        a
                    );
                }),
                (d.prototype.vendors = ["moz", "webkit"]),
                (d.prototype.vendorSet = function(a, b) {
                    var c, d, e, f;
                    f = [];
                    for (c in b)
                        (d = b[c]),
                            (a["" + c] = d),
                            f.push(
                                function() {
                                    var b, f, g, h;
                                    for (
                                        g = this.vendors,
                                            h = [],
                                            b = 0,
                                            f = g.length;
                                        f > b;
                                        b++
                                    )
                                        (e = g[b]),
                                            h.push(
                                                (a[
                                                    "" +
                                                        e +
                                                        c
                                                            .charAt(0)
                                                            .toUpperCase() +
                                                        c.substr(1)
                                                ] = d)
                                            );
                                    return h;
                                }.call(this)
                            );
                    return f;
                }),
                (d.prototype.vendorCSS = function(a, b) {
                    var c, d, e, f, g, h;
                    for (
                        d = window.getComputedStyle(a),
                            c = d.getPropertyCSSValue(b),
                            h = this.vendors,
                            f = 0,
                            g = h.length;
                        g > f;
                        f++
                    )
                        (e = h[f]),
                            (c = c || d.getPropertyCSSValue("-" + e + "-" + b));
                    return c;
                }),
                (d.prototype.animationName = function(a) {
                    var b;
                    try {
                        b = this.vendorCSS(a, "animation-name").cssText;
                    } catch (c) {
                        b = window
                            .getComputedStyle(a)
                            .getPropertyValue("animation-name");
                    }
                    return "none" === b ? "" : b;
                }),
                (d.prototype.cacheAnimationName = function(a) {
                    return this.animationNameCache.set(
                        a,
                        this.animationName(a)
                    );
                }),
                (d.prototype.cachedAnimationName = function(a) {
                    return this.animationNameCache.get(a);
                }),
                (d.prototype.scrollHandler = function() {
                    return (this.scrolled = !0);
                }),
                (d.prototype.scrollCallback = function() {
                    var a;
                    return this.scrolled &&
                        ((this.scrolled = !1),
                        (this.boxes = function() {
                            var b, c, d, e;
                            for (
                                d = this.boxes, e = [], b = 0, c = d.length;
                                c > b;
                                b++
                            )
                                (a = d[b]),
                                    a &&
                                        (this.isVisible(a)
                                            ? this.show(a)
                                            : e.push(a));
                            return e;
                        }.call(this)),
                        !this.boxes.length)
                        ? this.stop()
                        : void 0;
                }),
                (d.prototype.offsetTop = function(a) {
                    for (var b; void 0 === a.offsetTop; ) a = a.parentNode;
                    for (b = a.offsetTop; (a = a.offsetParent); )
                        b += a.offsetTop;
                    return b;
                }),
                (d.prototype.isVisible = function(a) {
                    var b, c, d, e, f;
                    return (
                        (c =
                            a.getAttribute("data-wow-offset") ||
                            this.config.offset),
                        (f = window.pageYOffset),
                        (e = f + this.element.clientHeight - c),
                        (d = this.offsetTop(a)),
                        (b = d + a.clientHeight),
                        e >= d && b >= f
                    );
                }),
                (d.prototype.util = function() {
                    return this._util || (this._util = new a());
                }),
                (d.prototype.disabled = function() {
                    return (
                        !this.config.mobile &&
                        this.util().isMobile(navigator.userAgent)
                    );
                }),
                d
            );
        })());
}.call(this));

/**
 * End WOW JS
 */


/**
 * Function For Search Bar in Home Page
 */
function insertDataDropdownProject(value,text)
{	
	$('#btn_project').text(text);
	$('#txt_project').val(value);
}
function insertDataDropdownLocation(value,text)
{	
	$('#btn_location').text(text);
	$('#txt_location').val(value);
}
function insertDataDropdownType(value,text)
{	
	$('#btn_type').text(text);
	$('#txt_type').val(value);
}
function insertDataDropdownPrice(value,text)
{	
	$('#btn_price').text(text);
	$('#txt_price').val(value);
}
/**
 * End Page For Search Bar in Home Page
 */

 /**
  * WOW jQuery 
  */
jQuery(document).ready(function() {
	/*
	    Wow
	*/
	new WOW().init();
	
	/*
	    Slider
	*/
	$('.flexslider').flexslider({
        animation: "slide",
        controlNav: "thumbnails",
        prevText: "<",
        nextText: ">"
    });
	
	/*
	    Slider 2
	*/
	$('.slider-2-container').backstretch([
	  "assets/img/slider/5.jpg"
	, "assets/img/slider/6.jpg"
	, "assets/img/slider/7.jpg"
	], {duration: 3000, fade: 750});
	/*
	   Back to Top
	 */
	// $('.back-to-top').tottTop({
	// 	scrollTop: 100
	// });
	/*
	 * 
	 */
	
    /*
	    Subscription form
	*/
	$('.success-message').hide();
	$('.error-message').hide();
	
	$('.footer-box-text-subscribe form').submit(function(e) {
		e.preventDefault();
		
		var form = $(this);
	    var postdata = form.serialize();
	    
	    $.ajax({
	        type: 'POST',
	        url: 'assets/subscribe.php',
	        data: postdata,
	        dataType: 'json',
	        success: function(json) {
	            if(json.valid == 0) {
	                $('.success-message').hide();
	                $('.error-message').hide();
	                $('.error-message').html(json.message);
	                $('.error-message').fadeIn();
	            }
	            else {
	                $('.error-message').hide();
	                $('.success-message').hide();
	                form.hide();
	                $('.success-message').html(json.message);
	                $('.success-message').fadeIn();
	            }
	        }
	    });
	});
    
    /*
	    Contact form
	*/
    $('.contact-form form').submit(function(e) {
    	e.preventDefault();

    	var form = $(this);
    	var nameLabel = form.find('label[for="contact-name"]');
    	var emailLabel = form.find('label[for="contact-email"]');
    	var messageLabel = form.find('label[for="contact-message"]');
    	
    	nameLabel.html('Name');
    	emailLabel.html('Email');
    	messageLabel.html('Message');
        
        var postdata = form.serialize();
        
        $.ajax({
            type: 'POST',
            url: 'assets/sendmail.php',
            data: postdata,
            dataType: 'json',
            success: function(json) {
                if(json.nameMessage != '') {
                	nameLabel.append(' - <span class="violet error-label"> ' + json.nameMessage + '</span>');
                }
                if(json.emailMessage != '') {
                	emailLabel.append(' - <span class="violet error-label"> ' + json.emailMessage + '</span>');
                }
                if(json.messageMessage != '') {
                	messageLabel.append(' - <span class="violet error-label"> ' + json.messageMessage + '</span>');
                }
                if(json.nameMessage == '' && json.emailMessage == '' && json.messageMessage == '') {
                	form.fadeOut('fast', function() {
                		form.parent('.contact-form').append('<p><span class="violet">Thanks for contacting us!</span> We will get back to you very soon.</p>');
                    });
                }
            }
        });
    });
});
/**
 * End WOW jQuery
 */

jQuery(window).load(function() {
	$('.portfolio-filters a').on('click', function(e){
		e.preventDefault();
		if(!$(this).hasClass('active')) {
	    	$('.portfolio-filters a').removeClass('active');
	    	var clicked_filter = $(this).attr('class').replace('filter-', '');
	    	$(this).addClass('active');
	    	if(clicked_filter != 'all') {
	    		$('.portfolio-box:not(.' + clicked_filter + ')').css('display', 'none');
	    		$('.portfolio-box:not(.' + clicked_filter + ')').removeClass('portfolio-box');
	    		$('.' + clicked_filter).addClass('portfolio-box');
	    		$('.' + clicked_filter).css('display', 'block');
	    		$('.portfolio-masonry').masonry();
	    	}
	    	else {
	    		$('.portfolio-masonry > div').addClass('portfolio-box');
	    		$('.portfolio-masonry > div').css('display', 'block');
	    		$('.portfolio-masonry').masonry();
	    	}
		}
	});	
});