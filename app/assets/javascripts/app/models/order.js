UniteToBuyIt.Order = DS.Model.extend({
  paymentMethod: DS.attr('string'),
  group_buy_id: DS.attr('string'),
  user_id: DS.belongsTo('UniteToBuyIt.User')
});
