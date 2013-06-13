UniteToBuyIt.GroupBuy = DS.Model.extend({
  createdAt:        DS.attr('string'),
  updatedAt:        DS.attr('string'),

  userId: DS.belongsTo('UniteToBuyIt.User', {
    inverse: 'groupBuyIds'
  }),
  name:             DS.attr('string'),
  email:            DS.attr('string'),
  // organizer:        DS.belongsTo('UniteToBuyIt.User'),

  manufacturer:     DS.attr('string'),

  endsAt:           DS.attr('string'),
  deliverableAt:    DS.attr('string'),
  cancelledAt:      DS.attr('string'),

  introduction:     DS.attr('string'),
  statusUpdates:    DS.attr('string'),

  orders: DS.hasMany('UniteToBuyIt.Order'),
  orderableSets: DS.hasMany('UniteToBuyIt.OrderableSet'),
  statusUpdates: DS.hasMany('UniteToBuyIt.StatusUpdate'),
  introduction: DS.belongsTo('UniteToBuyIt.Introduction'),


  orderableSets:    DS.attr('string')
  // orders:           DS.attr('string')
});

