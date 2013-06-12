object @group_buy

attributes(
  :_id,

  :user_id,

  :created_at,
  :updated_at,

  :ends_at,
  :deliverable_at,
  :cancelled_at,

  :order_ids
)
attribute(
  _id: :id
)

############
# Children #
############

child(:orderable_sets) {
  attribute(
    _id: :id
  )
}

