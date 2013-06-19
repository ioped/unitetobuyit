UniteToBuyIt.Router.map(function() {
  this.resource('users', function() {
    this.route('new');
    this.route('show', { path: ':user_id' });
    this.route('edit', { path: ':user_id/edit' });
  });

  this.resource('group_buys', function() {
    this.route('new');
    this.route('show', { path: ':group_buy_id' });
    this.route('edit', { path: ':group_buy_id/edit' });
  });

  this.resource('orders', function() {
    this.route('new');
    this.route('show', { path: ':orders_id' });
    this.route('edit', { path: ':orders_id/edit' });
  });

  this.resource('orderable_items', function() {
    this.route('new');
    this.route('show', { path: ':orderable_items_id' });
    this.route('edit', { path: ':orderable_items_id/edit' });
  });

  this.resource('orderable_sets', function() {
    this.route('new');
    this.route('show', { path: ':orderable_sets_id' });
    this.route('edit', { path: ':orderable_sets_id/edit' });
  });

  this.route('about');
  this.route('faq');
  this.route('contact_us');
});
