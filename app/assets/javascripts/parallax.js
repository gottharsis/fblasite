//parallax scrolling effect on hero images

var heroParallax = function(elem, speed = 0.33) {
    s = $('main').scrollTop()
    $(elem).css('background-position-y', `calc(50% + ${ s * speed}px)`)
}

$(document).on('turbolinks:load', function(){
    
/*     var bgPos = $('#homepage-hero').css('background-position').split()
    var yPos = bgPos[1];
    alert(yPos) */
    $('main').on('scroll', function(){
        heroParallax('.main-hero-image')
        heroParallax(".other-hero-image", 0.5)
    })
})