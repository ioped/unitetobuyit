class OrderableSetPriceTier
  include Mongoid::Document

  ################################
  # Mongoid relation definitions #
  ################################

  embedded_in :orderable_set

  #############################
  # Mongoid field definitions #
  #############################

  field :low_boundary, type: Integer
  field :high_boundary, type: Integer
  field :price, type: Integer

end
