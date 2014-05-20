(function() {
  "use strict";

  $(function() {
    $('.flash-alert i, .flash-notice i').click(function() {
      var flashElement = $(this).parent();
      flashElement.animate({
        borderWidth: 0,
        height: 0,
        marginBottom: 0,
        marginTop: 0,
        opacity: 0,
        paddingBottom: 0,
        paddingTop: 0
      });
      return false;
    });
  });

})();
