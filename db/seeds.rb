###########
# Cleanup #
###########

User.destroy_all
GroupBuy.destroy_all
Order.destroy_all
OrderableSet.destroy_all
Address.destroy_all



#########
# Users #
#########

u1 = User.create(
  display_name:          "Phillip J. Fry",
  email:                 "fry@primitive.io",
  is_admin?:             true,
  description:           "Einstein is a hard name to remember.",
  avatar_url:            "/assets/fry.jpg",
  first_name:            "Phillip",
  last_name:             "Fry",
  deskthority_name:      "fry",
  geekhack_name:         "fry",
  reddit_name:           "fry",
  group_buys:            nil,
  country_code:          "GB",
  address:               nil,
  orders:                nil,
  password:              "1234",
  password_confirmation: "1234"
)

u2 = User.create(
  display_name:          "Turanga Leela",
  email:                 "leela@mutant.io",
  is_admin?:             true,
  description:           "I guess you never outgrow being an eyeball... oddball.",
  avatar_url:            "/assets/leela.jpg",
  first_name:            "Turanga",
  last_name:             "Leela",
  deskthority_name:      "leela",
  geekhack_name:         "leela",
  reddit_name:           "leela",
  group_buys:            nil,
  country_code:          "GB",
  orders:                nil,
  password:              "1234",
  password_confirmation: "1234"
)

u3 = User.create(
  display_name:          "Prof. Farnsworth",
  email:                 "farnsworth@planetexpress.io",
  is_admin?:             false,
  description:           "Sweet zombie Jesus!",
  avatar_url:            "/assets/farnsworth.jpg",
  first_name:            "Hubert",
  last_name:             "Farnsworth",
  deskthority_name:      "prof",
  geekhack_name:         "prof",
  reddit_name:           "prof",
  group_buys:            nil,
  country_code:          "GB",
  orders:                nil,
  password:              "1234",
  password_confirmation: "1234"
)

u4 = User.create(
  display_name:          "Dr. Zoidberg",
  email:                 "zoidberg@spacecrab.io",
  is_admin?:             false,
  description:           "What? My mother was a saint! Get out!",
  avatar_url:            "/assets/zoidberg.jpg",
  first_name:            "Doctor",
  last_name:             "Zoidberg",
  deskthority_name:      "fry",
  geekhack_name:         "fry",
  reddit_name:           "fry",
  group_buys:            nil,
  country_code:          "GB",
  orders:                nil,
  password:              "1234",
  password_confirmation: "1234"
)

u5 = User.create(
  display_name:          "Bender",
  email:                 "bender@alcohol.io",
  is_admin?:             false,
  description:           "Bite my shiny, metal ass!",
  avatar_url:            "/assets/bender.jpg",
  first_name:            "Bender",
  last_name:             "Robot",
  deskthority_name:      "bender",
  geekhack_name:         "bender",
  reddit_name:           "bender",
  group_buys:            nil,
  country_code:          "GB",
  orders:                nil,
  password:              "1234",
  password_confirmation: "1234"
)

u6 = User.create(
  display_name:          "Lord Nibbler",
  email:                 "nibbler@nibblonians.io",
  is_admin?:             true,
  description:           "Everyone out of the universe, quick!",
  avatar_url:            "/assets/nibbler.jpg",
  first_name:            "Lord",
  last_name:             "Nibbler",
  deskthority_name:      "nibbler",
  geekhack_name:         "nibbler",
  reddit_name:           "nibbler",
  group_buys:            nil,
  country_code:          "GB",
  orders:                nil,
  password:              "1234",
  password_confirmation: "1234"
)



#############
# Addresses #
#############

a1 = Address.create(
    door_number: "1",
    postal_code: "XX111XX",
    country: "England",
    street: "Bread Street",
    state_or_county: "London"
)

a2 = Address.create(
    door_number: "1",
    postal_code: "XX111XX",
    country: "England",
    street: "Bread Street",
    state_or_county: "London"
)

a3 = Address.create(
    door_number: "1",
    postal_code: "XX111XX",
    country: "England",
    street: "Bread Street",
    state_or_county: "London"
)

a4 = Address.create(
    door_number: "1",
    postal_code: "XX111XX",
    country: "England",
    street: "Bread Street",
    state_or_county: "London"
)

a5 = Address.create(
    door_number: "1",
    postal_code: "XX111XX",
    country: "England",
    street: "Bread Street",
    state_or_county: "London"
)

a6 = Address.create(
    door_number: "1",
    postal_code: "XX111XX",
    country: "England",
    street: "Bread Street",
    state_or_county: "London"
)

u1.address = a1
u2.address = a2
u3.address = a3
u4.address = a4
u5.address = a5
u6.address = a6



##############
# Group Buys #
##############

gb1 = GroupBuy.create(
  name: "cats",
  email: "cats@lol.com",

  deskthority_thread_url: "deskthority.net/1",
  geekhack_thread_url: "geekhack.org/1",
  reddit_thread_url: "reddit.com/1"
)

gb2 = GroupBuy.create(
  name: "longcats",
  email: "long@cats.com",

  deskthority_thread_url: "deskthority.net/2",
  geekhack_thread_url: "geekhack.org/2",
  reddit_thread_url: "reddit.com/2"
)

gb3 = GroupBuy.create(
  name: "shortcats",
  email: "c@short.com",

  deskthority_thread_url: "deskthority.net/3",
  geekhack_thread_url: "geekhack.org/3",
  reddit_thread_url: "reddit.com/3"
)

# Group Buy owners

u6.group_buys << gb1



#################
# OrderableSets #
#################

os1 = OrderableSet.create(
  group_buy: gb1,
  name: "Hello.",
  description: "I am a descriptive description."
)

os2 = OrderableSet.create(
  group_buy: gb1,
  name: "Hello. 2",
  description: "I am a descriptive description."
)

os3 = OrderableSet.create(
  group_buy: gb2,
  name: "Hello. 3",
  description: "I am a descriptive description."
)

os4 = OrderableSet.create(
  group_buy: gb3,
  name: "Hello. 4",
  description: "I am a descriptive description."
)

os5 = OrderableSet.create(
  group_buy: gb3,
  name: "Hello. 5",
  description: "I am a descriptive description."
)



##########################
# OrderableSetPriceTiers #
##########################

ospt1 = OrderableSetPriceTier.create(
  orderable_set: os1,
  low_boundary: 1,
  high_boundary: 5,
  price: 650
)

ospt2 = OrderableSetPriceTier.create(
  orderable_set: os1,
  low_boundary: 6,
  high_boundary: 10,
  price: 550
)

ospt3 = OrderableSetPriceTier.create(
  orderable_set: os2,
  low_boundary: 1,
  high_boundary: 5,
  price: 450
)

ospt4 = OrderableSetPriceTier.create(
  orderable_set: os2,
  low_boundary: 6,
  high_boundary: 10,
  price: 250
)

ospt5 = OrderableSetPriceTier.create(
  orderable_set: os3,
  low_boundary: 1,
  high_boundary: 5,
  price: 3550
)

ospt6 = OrderableSetPriceTier.create(
  orderable_set: os3,
  low_boundary: 6,
  high_boundary: 10,
  price: 2335
)

ospt7 = OrderableSetPriceTier.create(
  orderable_set: os3,
  low_boundary: 11,
  high_boundary: 25,
  price: 1840
)

ospt8 = OrderableSetPriceTier.create(
  orderable_set: os3,
  low_boundary: 25,
  high_boundary: 50,
  price: 1570
)



##########
# Orders #
##########

o1 = Order.create(
  group_buy: gb1,
  currency: "USD",
  shipping_price: 1500,
  payment_method: "PayPal"
)

o2 = Order.create(
  group_buy: gb1,
  currency: "USD",
  shipping_price: 2000,
  payment_method: "PayPal"
)

o3 = Order.create(
  group_buy: gb2,
  currency: "USD",
  shipping_price: 1000,
  payment_method: "PayPal"
)

o4 = Order.create(
  group_buy: gb3,
  currency: "USD",
  shipping_price: 575,
  payment_method: "PayPal"
)

o5 = Order.create(
  group_buy: gb3,
  currency: "USD",
  shipping_price: 575,
  payment_method: "PayPal"
)

o6 = Order.create(
  group_buy: gb3,
  currency: "USD",
  shipping_price: 575,
  payment_method: "PayPal"
)


# Order owners

u1.orders << o1
u2.orders << o2
u3.orders << o3
u4.orders << o4
u5.orders << o5
u6.orders << o6



######################
# OrderableSetCounts #
######################

osc1 = OrderableSetCount.create(
  order: o1,
  set_count: 1
)

osc2 = OrderableSetCount.create(
  order: o1,
  set_count: 2
)


osc1.orderable_set = os1
osc2.orderable_set = os2



