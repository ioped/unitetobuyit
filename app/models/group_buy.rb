class GroupBuy
  include Mongoid::Document
  include Mongoid::Timestamps

  ################################
  # Mongoid relation definitions #
  ################################

  belongs_to  :user

  embeds_one  :introduction, autobuild: true
  embeds_many :status_updates

  has_many :orders

  has_many :orderable_sets


  #############################
  # Mongoid field definitions #
  #############################

  # Group Buy information fields

  field :name                   , type: String
  field :email                  , type: String
  field :manufacturer           , type: String

  # Descriptions and updates

# field :introduction           , type: Object (embedded document)
# field :status_updates         , type: Object (embedded document)

  # Related community links

  field :deskthority_thread_url , type: String
  field :geekhack_thread_url    , type: String
  field :reddit_thread_url      , type: String

  # Timekeeping

  field :ends_at                , type: DateTime
  field :deliverable_at         , type: DateTime
  field :cancelled_at           , type: DateTime





  field :payment_collectors     , type: Array

  field :orderable_sets         , type: Array

  field :orders                 , type: Array


end
