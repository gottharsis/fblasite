// Behavior of tabs on main page and content pages

$(document).on('turbolinks:load', function () {
  $(document).on('click', 'a.tab', function (event) {
    event.preventDefault()
    $('.panel.is-active').toggleClass('is-active')
    $(this.hash).toggleClass('is-active')
    $('a.tab.is-active').toggleClass('is-active')
    $(this).toggleClass('is-active')
  })
})
