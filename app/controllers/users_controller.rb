class UsersController < ApplicationController
  before_action :require_no_user, only: [:create, :new]

  def create
    @user = User.new(user_params)
    if @user.save
      signin_user(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def new
    @user = User.new
  end



  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
