UniteToBuyIt.User = DS.Model.extend({
  name: DS.attr('string')
});

UniteToBuyIt.User.FIXTURES = [
  {
    id: 1,
    name: "Pedro"
  },
  {
    id: 2,
    name: "Kim"
  },
  {
    id: 3,
    name: "Juan"
  }
];
