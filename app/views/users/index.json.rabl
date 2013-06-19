collection @users, root: :users

attributes(

  # Metadata

  :_id                   ,
  :created_at            ,
  :updated_at            ,

  # User identification

  :email                 ,
  :is_admin?             ,
  :display_name          ,
  :description           ,
  :avatar_url            ,

  :deskthority_name      ,
  :geekhack_name         ,
  :reddit_name           ,

  :group_buy_ids         ,
  :address_id            ,
  :first_name            ,
  :last_name             ,
  :order_ids             ,
  :country_code          ,

  :organizer             ,
  :payment_collector_for ,

  # Password properties

  :hashed                ,
  :salt
)
attribute(
  _id: :id
)
