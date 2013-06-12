collection @orders, root: :orders

attributes(

  # Meta properties

  :_id,
  :created_at,
  :updated_at,

  # Connected objects

  :user_id, #buyer
  :group_buy_id,

  # Payment properties

  :currency, # keep to USD for now
  :shipping_price,
  :total_price, # calc from shipping_$ + (osc.set_$ * osc.os.ospt.$)... somehow
  :remaining_balance,

  :payment_method,

  # Not implemented this iteration

  # :paypal_email,
  # :payment_collector,

  # :payments_made,
  # :invoices_sent,

  # Timekeeping properties

  :cancelled_at #if not null, then order has been cancelled
)
attribute(
  _id: :id
)


############
# Children #
############

child(:orderable_set_counts) {
  attribute(
    :_id,
    :set_count,
    :orderable_set
  )
  attribute(
  _id: :id
  )
}


