// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs

// Batman.js and its adapters
//= require batman/batman
//= require batman/batman.jquery
//= require batman/batman.rails

//= require batman_raffler

//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./helpers


//= require_tree .
// Run the Batman app
$(document).ready(function(){
  BatmanRaffler.run();
});

