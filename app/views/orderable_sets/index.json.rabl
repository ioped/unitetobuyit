collection @orderable_sets, root: :orderable_sets

attributes(

  # Meta
  :_id,
  :group_buy_id,

  :name,
  :description,
  :orderable_set_price_tier_ids,

  :currency,
  :shipping_price,
  :total_price,

  :payment_collector
)

attribute(
  _id: :id
)
