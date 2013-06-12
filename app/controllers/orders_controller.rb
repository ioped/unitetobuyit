class OrdersController < ApplicationController
  respond_to :json

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])
  end

  def update
    @order = Order.find(params[:id])
    head :not_found unless @user

    if @order.update_attributes(params[:order])
      render :show, status: :ok
    else
      render :errors, status: :unprocessable_entity
    end
  end

end