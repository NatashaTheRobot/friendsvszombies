# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.fbAsyncInit = function() {
  FB.init({
    appId  : '#{ENV['FACEBOOK_KEY']}',
    status : true, // check login status
    cookie : true, // enable cookies to allow the server to access the session
    xfbml  : true  // parse XFBML
  });
};

(function(d) {
  var js, id = 'facebook-jssdk'; if (d.getElementById(id)) {return;}
  js = d.createElement('script'); js.id = id; js.async = true;
  js.src = "//connect.facebook.net/en_US/all.js";
  d.getElementsByTagName('head')[0].appendChild(js);
}(document));

$(function() {
  $('a').click(function(e) {
    e.preventDefault();

    FB.login(function(response) {
      if (response.authResponse) {
        $('#connect').html('Connected! Hitting OmniAuth callback (GET /auth/facebook/callback)...');

        // since we have cookies enabled, this request will allow omniauth to parse
        // out the auth code from the signed request in the fbsr_XXX cookie
        $.getJSON('/auth/facebook/callback', function(json) {
          $('#connect').html('Connected! Callback complete.');
          $('#results').html(JSON.stringify(json));
        });
      }
    }, { scope: '#{SCOPE}' });
  });
});

