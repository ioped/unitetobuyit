UniteToBuyIt.GroupBuy = DS.Model.extend({
  createdAt: DS.attr(''),
  updatedAt: DS.attr(''),

  name: DS.attr('string'),
  email: DS.attr('string'),
  organizer: DS.attr('string'),

  endsAt: DS.attr('string'),
  cancelledAt: DS.attr('string'),
});

UniteToBuyIt.GroupBuy.FIXTURES = [
  {
    id: "1",
    createdAt: 1370812382,
    updatedAt: 1370812382,

    name: "lolcats",
    email: "example@example.com",
    organizer: "1",

    manufacturer: "Signature Plastics",

    endsAt: 1370812382,
    deliverableAt: 1370812382,
    cancelledAt: null,

    paymentCollectors: [
      "1",
      "2"
    ],

    introduction: {
      id: "1",
      createdAt: 1370812382,
      updatedAt: 1370812382,

      body: "html",
      editCount: 1
    },

    statusUpdates: [
      {
        id: "1",
        createdAt: 1370812382,
        updatedAt: 1370812382,

        body: "html",
        editCount: 1
      },
      {
        id: "2",
        createdAt: 1370812382,
        updatedAt: 1370812382,

        body: "html",
        editCount: 1
      }
    ],

    orderableSets: [
      "1",
      "2"
    ],

    orders: [
      "1",
      "2"
    ]
  },
  {
    id: "2",
    name: "shamrock"
  },
  {
    id: "3",
    name: "longcat"
  }
];
