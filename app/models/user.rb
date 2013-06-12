require 'bcrypt'

class User
  include Mongoid::Document
  include Mongoid::Timestamps

  attr_accessor(
    :password,
    :password_confirmation
  )

  attr_accessible(
    :email,
    :is_admin?,
    :display_name,
    :description,
    :avatar_url,

    :first_name,
    :last_name,

    :deskthority_name,
    :geekhack_name,
    :reddit_name,

    :address,
    :orders,
    :group_buys,

    :password ,
    :password_confirmation
  )


  ################################
  # Mongoid relation definitions #
  ################################

  has_one :address
  has_many :orders
  has_many :group_buys


  #############################
  # Mongoid field definitions #
  #############################

  # User information fields

  field :email            , type: String
  field :is_admin?        , type: Boolean , default: ->{ false }
  field :display_name     , type: String
  field :description      , type: String
  field :avatar_url       , type: String
  field :first_name       , type: String
  field :last_name        , type: String

  # Community profiles

  field :deskthority_name , type: String
  field :geekhack_name    , type: String
  field :reddit_name      , type: String

  # Password-related fields

  field :hashed           , type: String
  field :salt             , type: String


  ###############
  # Validations #
  ###############

  validates :email        , presence:     true
  validates :email        , uniqueness:   true
  validates :display_name , presence:     true
  validates :display_name , uniqueness:   true
  validates :password     , confirmation: true


  #############
  # Callbacks #
  #############

  before_validation :downcase_email
  before_save       :encrypt_password


  ###########
  # Methods #
  ###########

  def self.authenticate(email, password)
    user = User.find_by(email: email)

    if user && user.hashed == BCrypt::Engine.hash_secret(password, user.salt)
      user
    else
      nil
    end
  end

  private

    def encrypt_password
      if password.present?
        self.salt     = BCrypt::Engine.generate_salt
        self.hashed   = BCrypt::Engine.hash_secret(password, self.salt)
        self.password = nil
      end
    end

    def downcase_email
      self.email.downcase! unless email == nil
    end

end
