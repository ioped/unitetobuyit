class UsersController < ApplicationController
  respond_to :json

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
    else
      head :not_found
    end
  end

  def update
    @user = User.find(params[:id])
    head :not_found unless @user

    if @user.update_attributes(params[:user])
      render :show, status: :ok
    else
      render :errors, status: :unprocessable_entity
    end
  end

  # No destroy method
  # Can't allow users to destroy themselves, need to keep track of everything.
  # Maybe deactivate account?

end
