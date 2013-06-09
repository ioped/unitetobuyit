UniteToBuyIt.IndexRoute = Ember.Route.extend({
  redirect: function() {
    this.transitionTo('application');
  }
});

UniteToBuyIt.UsersIndexRoute = Ember.Route.extend({
  model: function() {
    return UniteToBuyIt.User.find();
  }
});
