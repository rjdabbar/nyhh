
jQuery(function() {
  var completer;

  completer = new GmapsCompleter({
    inputField: '#gmaps-input-address',
    errorField: '#gmaps-error'
  });

  completer.autoCompleteInit({
    country: "us"
  });
});

$('.redirect_to_new').on('click', function(){
	window.location.href="/events/new";
})