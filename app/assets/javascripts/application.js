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
//= require_tree .

$(function (){

  $('#originality_score_form').
    on('ajax:success', function(evt, data, status, xhr){
      // console.log('success: ', data);   
      $('#originality_score').html(data);
    }).
    on('ajax:error', function(xhr, status, error){
      console.log('error: ', error);
    }); // end click listener

    $('#vote_weight').on('keyup', function(){
      $('#originality_score_form').submit();
    }) // end search listener

}); // end document ready


