// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .


$(document).ready(function() {
    $('.pull-me1').mouseenter(function() {
    $('.panel1').slideToggle('slow');
    });
});


$(document).ready(function() {
    $('.pull-me2').mouseenter(function() {
    $('.panel2').slideToggle('slow');
    });
});

$(document).ready(function() {
    $('.pull-me3').mouseenter(function() {
    $('.panel3').slideToggle('slow');
    });
});


$(document).ready(function() {
    $('.pull-me4').mouseenter(function() {
    $('.panel4').slideToggle('slow');
    });
});
// $(function() {
//       var pull     = $('#pull');
//         menu  = $('nav ul');
//         menuHeight  = menu.height();

//       $(pull).on('click', function(e) {
//         e.preventDefault();
//         menu.slideToggle();
//       });

//       $(window).resize(function(){
//             var w = $(window).width();
//             if(w > 320 && menu.is(':hidden')) {
//               menu.removeAttr('style');
//             }
//         });
//     });