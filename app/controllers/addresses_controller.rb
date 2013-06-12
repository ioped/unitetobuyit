class AddressesController < ApplicationController
  respond_to :json

  def index
    @adresses = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

end
