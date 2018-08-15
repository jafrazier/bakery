$('div').scroll(function(){
    $('.nav a').fadeOut(1000)
});

// $('.nav a').fadeOut(1500)
$('header').hover (function() {
  $('.nav a').fadeToggle(500)
});
$('.container').hide()
$('.container').fadeIn(500)

$('.main-carousel').flickity({
  cellAlign: 'left',
  contain: true
});
