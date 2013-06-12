object @order

attributes(

  # Meta properties

  :_id,
  :created_at,
  :updated_at,

  # Connected objects

  :user_id,
  :group_buy_id,

  # Payment properties

  :currency,
  :shipping_price,
  :total_price,
  :remaining_balance,

  :payment_method,

  # Payments not implemented this iteration

  # :paypal_email,
  # :payment_collector,

  # :payments_made,
  # :invoices_sent,

  :delivery_address,

  # Timekeeping properties

  :submitted_at,
  :cancelled_at
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

child(:user){
  attributes(
    :_id,
    :first_name,
    :last_name,
    :address
  )
  attribute(
    _id: :id
  )
}

