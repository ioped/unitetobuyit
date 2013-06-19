class OrderableSetCount
  include Mongoid::Document

  ################################
  # Mongoid relation definitions #
  ################################

  has_one :orderable_set
  embedded_in :order

  #############################
  # Mongoid field definitions #
  #############################

  field :set_count, type: Integer

end
