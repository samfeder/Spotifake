class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :signed_in?

  private
  def current_user
    return nil  unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def signin_user(user)
    session[:session_token] = user.reset_session_token!
    redirect_to bands_url
  end

  def signed_in?
    !!current_user
  end

  def signout_user
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def require_user
    redirect_to new_session_url if current_user.nil?
  end

  def require_no_user
    redirect_to bands_url if signed_in?
  end
end
