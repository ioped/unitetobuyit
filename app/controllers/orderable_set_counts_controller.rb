class OrderableSetCountsController < ApplicationController
  before_filter :authorize
  respond_to :json

  def index
    @orderable_set_counts = OrderableSetCount.all
  end

  def show
    @orderable_set_count = OrderableSetCount.find(params[:id])
  end

end
