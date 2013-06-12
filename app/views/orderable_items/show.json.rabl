object @orderable_items

attributes(

  # Meta properties

  :_id,
  :created_at,
  :updated_at,

  # Connected objects

  :name,
  :orderable_kind,

  # Payment properties

  :currency,
  :shipping_price,
  :total_price,
  :payment_method,
  :payment_collector,

  :payments_made,
  :invoices_sent,

  :delivery_address,

  # Timekeeping properties

  :submitted_at,
  :cancelled_at

)
attribute(
  _id: :id
)