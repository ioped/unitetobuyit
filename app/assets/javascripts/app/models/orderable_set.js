UniteToBuyIt.User = DS.Model.extend({
  displayName:     DS.attr('string'),
  idAdmin:  DS.attr('boolean', {
    defaultValue: false
  }),
  paymentCollectorFor: DS.belongsTo('UniteToBuyIt.GroupBuy', {
    inverse: 'paymentCollectors'
  }),
  countryCode: DS.attr('string')
});
