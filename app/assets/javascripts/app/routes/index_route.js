UniteToBuyIt.IndexRoute = Ember.Route.extend({
  redirect: function() {
    this.transitionTo('application');
  }
});
