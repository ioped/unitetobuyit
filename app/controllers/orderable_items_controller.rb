class OrderableItemsController < ApplicationController
  respond_to :json

  def index
    @orderable_items = OrderableItem.all
  end

  def index
    @orderable_item = OrderableItem.find(params[:id])
  end

end
