class OrderableSet
  include Mongoid::Document

  ################################
  # Mongoid relation definitions #
  ################################

  belongs_to :orderable_set_count
  belongs_to :group_buy
  embeds_many :orderable_set_price_tiers
  # embeds_many :orderable_items

  #############################
  # Mongoid field definitions #
  #############################

  field :name, type: String
  field :description, type: String

end
