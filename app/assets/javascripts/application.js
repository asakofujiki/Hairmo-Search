// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).on('turbolinks:load', function() {

  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
        reader.onload = function (e) {
          $('.img-prev').attr('src', e.target.result);
        }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#hairdresser_hairdresser_image").change(function(){
    readURL(this);
  });


  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
        reader.onload = function (e) {
          $('.img-prev').attr('src', e.target.result);
        }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#hair_catalog_catalog_image").change(function(){
    readURL(this);
  });


  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
        reader.onload = function (e) {
          $('.img-prev').attr('src', e.target.result);
        }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#model_hairmodel_image").change(function(){
    readURL(this);
  });


  $('#tab-contents .tab[id != "tab1"]').hide();
  $('#tab-menu a').on('click', function() {
    $("#tab-contents .tab").hide();
    $("#tab-menu .active").removeClass("active");
    $(this).addClass("active");
    $($(this).attr("href")).show();
    return false;
  });


  $('.s-menu').hide();
  $('.signin-trigger').on('click', function(event) {
    $('.s-menu').fadeToggle();
    event.preventDefault();
  });


  $('.l-menu').hide();
  $('.login-trigger').on('click', function(event) {
    $('.l-menu').fadeToggle();
    event.preventDefault();
  });


  $('.start-menu').hide();
  $('.start-trigger').on('click', function(event) {
    $('.start-menu').fadeToggle();
    event.preventDefault();
  });

  // $('.start-menu').on('mouseout', function(event) {
  //   $('.start-trigger').off('click');
  // });

  // $('.start-trigger').off('click');

  // $('.about').on('click', function(event) {
  //   $('.start-menu').hide();
  // });


});




