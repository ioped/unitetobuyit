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

  # Community profiles

  :deskthority_name      ,
  :geekhack_name         ,
  :reddit_name           ,

  # 

  :first_name            ,
  :last_name             ,
  :country_code          ,
  :group_buy_ids         ,
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
