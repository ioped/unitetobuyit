UniteToBuyIt.GroupBuysRoute = Ember.Route.extend({
  model: function() {
    return UniteToBuyIt.GroupBuy.find();
  }
});

UniteToBuyIt.GroupBuysShowRoute = Ember.Route.extend({
  model: function(params) {
    return UniteToBuyIt.GroupBuy.find(params.group_buy_id);
  }
});
