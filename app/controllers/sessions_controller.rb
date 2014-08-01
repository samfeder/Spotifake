class SessionsController < ApplicationController
  before_action :require_no_user, only: [:create, :new]

  def create
    user = User.find_by(email: params[:user][:email])

    if valid_login?(user)
      signin_user(user)
    else
      flash.now[:errors] = ["Invalid Username/Password combo"]
      render :new
    end
  end

  def destroy
    signout_user #session_token reset here
    redirect_to new_session_url
  end

  def new
    render :new
  end

  private
  def valid_login?(user)
    return false if user.nil?
    user.is_password?(params[:user][:password])
  end

end
