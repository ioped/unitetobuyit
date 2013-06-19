UniteToBuyIt.GroupBuyNewController = Ember.ObjectController.extend({
  saveGroupBuy: function() {
    var self = this
    var user = UniteToBuyIt.User.find(gon.id);
    self.get('model').set('user', user);
    self.get('store').commit();
    self.get('target').transitionTo('index');
  }
});
