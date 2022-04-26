class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_user_logged_in!
    redirect_to login_path, alert: 'You must be logged in to do this!' if Current.user.nil?
  end

  def require_user_subscribed!
    redirect_to checkout_path, alert: 'Oops! You must be have a subscription to be able to rent and return a bike.' if Current.user.subscription_type.nil?
  end
end