class GroupBuysController < ApplicationController
  before_filter :authorize
  respond_to :json

  def index
    @group_buys = GroupBuy.all
  end

  def show
    @group_buy = GroupBuy.find(params[:id])
  end

  def new
    @group_buy = GroupBuy.new
  end

  def create
    @group_buy = GroupBuy.new(params[:group_buy])
  end

  def update
    @group_buy = GroupBuy.find(params[:id])
    head :not_found unless @group_buy

    if @group_buy.update_attributes params[:group_buy]
      render :show, status: :ok
    else
      render :errors, status: :unprocessable_entity
    end
  end

end
