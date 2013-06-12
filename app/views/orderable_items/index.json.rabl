collection @orderable_items, root: :orderable_items

attributes(
  :_id,
  :user_id,
  :created_at,
  :updated_at,
  :submitted_at,
  :cancelled_at,

  :group_buy_id,


  :currency,
  :shipping_price,
  :total_price,

  :payment_collector
)
attribute(
  _id: :id
)