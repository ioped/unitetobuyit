UniteToBuyIt.GroupBuyNewController = Ember.ObjectController.extend({
  saveGroupBuy: function() {
    var user = UniteToBuyIt.User.find(gon.id);
    this.get('model').set('user', user);
    this.get('store').commit();
    this.get('target').transitionTo('index');
  }
});
