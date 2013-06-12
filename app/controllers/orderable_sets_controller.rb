class OrderableSetsController < ApplicationController
  respond_to :json

  def index
    @orderable_sets = OrderableSet.all
  end

  def show
    @orderable_set = OrderableSet.find(params[:id])
  end

end
