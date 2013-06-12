class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  ################################
  # Mongoid relation definitions #
  ################################

  belongs_to :user
  belongs_to :group_buy

  embeds_many :orderable_set_counts

  #############################
  # Mongoid field definitions #
  #############################

  field :submitted_at     , type: DateTime
  field :cancelled_at     , type: DateTime

  field :group_buy        , type: Integer

  field :currency         , type: String  # going to keep to dollars only for now
  field :shipping_price   , type: Integer
  field :payment_method   , type: String

  # no payments yet...

  # field :payments_made    , type: Array
  # field :invoices_sent    , type: Array

end
