class Address
  include Mongoid::Document
  include Mongoid::Timestamps

  ################################
  # Mongoid relation definitions #
  ################################

  belongs_to :user

  #############################
  # Mongoid field definitions #
  #############################

  field :door_number, type: String
  field :postal_code, type: String
  field :country, type: String
  field :street, type: String
  field :state_or_county, type: String

end
