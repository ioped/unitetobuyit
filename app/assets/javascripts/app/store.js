UniteToBuyIt.Store = DS.Store.extend({
  revision: 13,
  adapter: DS.RESTAdapter
});

DS.RESTAdapter.reopen({
  namespace: 'api'
});

// DS.RESTAdapter.configure("plurals", {
//   "user": "users",
//   "groupBuy": "groupBuys",
//   "order": "orders"
// });

