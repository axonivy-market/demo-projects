function setupDatepicker(dateInputFieldId, cssUri, iconUri, dateFormatPattern){
  updateCSS(cssUri); 
  // Datepicker
  $(dateInputFieldId).datepicker({
	showOn: 'button',
	buttonImage: iconUri,
	dateFormat: dateFormatPattern,
	buttonImageOnly: true,
	showButtonPanel: true,
	showAnim: false,
	changeMonth: true,
	changeYear: true,
	showWeek: true,
	showOtherMonths: true,
	selectOtherMonths: true,
	shortYearCutoff: '+20',
	yearRange: 'c-80:c+20'});
}

//function to append a new theme stylesheet with the new style changes
function updateCSS(locStr){
  var cssLink = document.createElement("link");
  cssLink.setAttribute("rel", "stylesheet");
  cssLink.setAttribute("type", "text/css");
  cssLink.setAttribute("href", locStr);
  $("head")[0].appendChild(cssLink);
} 
