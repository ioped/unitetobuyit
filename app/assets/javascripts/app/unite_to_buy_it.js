window.UniteToBuyIt = Em.Application.create({
  VERSION: '0.0.1',

  LOG_TRANSITIONS: true,

  rootElement: '#body',

  ready: function() {

  }
});

UniteToBuyIt.displayError = function(e) {
  if (typeof e === 'string') {
    // display error strings
    alert(e);
  }
  else if (typeof e === 'object' && e.responseText !== undefined) {
    // TODO - further process json errors
    alert(e.responseText);
  }
  else {
    alert("An unexpected error occurred.");
  }
};

UniteToBuyIt.deferReadiness();
