// Behavior of sidebar (only on mobile site)

var outsideClickListenerSidebar = function(event) { //closes sidebar when clicking on obfuscator
  if (!$(event.target).closest('.sidebar').length){
    if ($('.sidebar').width() > 0){
      $('.sidebar .nav-link').hide()
      $('.sidebar').animate({width: 0}, 200, function () {
        $('.obfuscator').hide().off('click', outsideClickListenerSidebar)
      })
    }
  }
}

$(document).on('turbolinks:load', function () {
  $(document).on('click', '#show-sidebar', function () {
    $('.obfuscator').show()
    $('.sidebar').animate({width: 240}, 200, function () {
      $('.sidebar .nav-link').show()
      $(document).on('click', '.obfuscator', outsideClickListenerSidebar)
    })
  })
})
