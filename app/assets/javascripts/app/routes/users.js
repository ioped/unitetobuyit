UniteToBuyIt.UsersRoute = Ember.Route.extend({
  model: function() {
    return UniteToBuyIt.User.find();
  }
});

UniteToBuyIt.UsersShowRoute = Ember.Route.extend({
  model: function(params) {
    return UniteToBuyIt.User.find(params.user_id);
  }
});
