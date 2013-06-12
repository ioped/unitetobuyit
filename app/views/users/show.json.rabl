object @user

attributes(

  # Metadata

  :_id                   ,
  :created_at            ,
  :updated_at            ,

  # User identification

  :email                 ,
  :display_name          ,
  :description           ,
  :avatar_url            ,

  :deskthority_name      ,
  :geekhack_name         ,
  :reddit_name           ,

  :first_name            ,
  :last_name             ,
  :country_code          ,

  # Password properties

  :hashed                ,
  :salt
)
attribute(
  _id: :id
)


############
# Children #
############

child(:address) {
  attributes(
    :_id              ,
    :door_number      ,
    :postal_code      ,
    :country          ,
    :street           ,
    :state_or_county
  )
  attribute(
    _id: :id
  )
}

child(:orders) {
  attributes(
    :_id,
    :payment_method,
    :group_buy_id
  )
  attribute(
    _id: :id
  )
}

child(:group_buys) {
  attributes(
    :_id,
    :name
  )
  attribute(
    _id: :id
  )
}
