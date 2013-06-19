UniteToBuyIt.User = DS.Model.extend({
  createdAt:       DS.attr('string'),
  updatedAt:       DS.attr('string'),
  email:           DS.attr('string'),
  displayName:     DS.attr('string'),
  description:     DS.attr('string'),
  avatarUrl:       DS.attr('string'),
  'isAdmin?':         DS.attr('boolean', {
    defaultValue: false
  }),

  firstName:       DS.attr('string'),
  lastName:        DS.attr('string'),

  deskthorityName: DS.attr('string'),
  geekhackName:    DS.attr('string'),
  reddit_name:     DS.attr('string'),

  orders: DS.hasMany('UniteToBuyIt.Order'),
  groupBuyIds: DS.hasMany('UniteToBuyIt.GroupBuy', {
    inverse: 'userId'
  }),
  countryCode: DS.attr('string')
});
