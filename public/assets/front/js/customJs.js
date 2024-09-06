jQuery(document).ready(function () {
  jQuery('.rdo').change(function () {
    jQuery('.pdInfo.Prdselected').removeClass('Prdselected');
    if (jQuery(this).is(':checked')) {
      jQuery(this).closest('.pdInfo').addClass('Prdselected');
    } else jQuery(this).closest('.pdInfo').removeClass('Prdselected');
  });
});
jQuery(function () {
  var cbutton = jQuery('#currencyButton');
  var cbox = jQuery('#currencyBox');
  cbutton.removeAttr('href');
  cbutton.mouseup(function (currency) {
    cbox.toggle();
    cbutton.toggleClass('active');
  });
  jQuery(this).mouseup(function (currency) {
    if (!(jQuery(currency.target).parent('#currencyButton').length > 0)) {
      cbutton.removeClass('active');
      cbox.hide();
    }
  });
});
jQuery(function () {
  var lbutton = jQuery('#languageButton');
  var lbox = jQuery('#languageBox');
  lbutton.removeAttr('href');
  lbutton.mouseup(function (language) {
    lbox.toggle();
    lbutton.toggleClass('active');
  });
  jQuery(this).mouseup(function (language) {
    if (!(jQuery(language.target).parent('#languageButton').length > 0)) {
      lbutton.removeClass('active');
      lbox.hide();
    }
  });
});
