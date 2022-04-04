class PasswordResetsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_later
    end
    redirect_to root_path, notice: 'Please check your email for a link to verify your request!'
  end

  def edit
    # finds user w/ valid token
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to login_path, alert: 'Your token has expired. Please try again.'
  end

  def update
    # updates user password
    @user = User.find(params[:token], purpose: 'password_reset')
    if @user.update(password_params)
      redirect_to login_path, notice: 'Your ValetBike password has successfully been updated!'
    else
      render :edit
    end
  end

  private

  def password_params
    # defines password parameters passed into controller
    params.require(:user).permit(:password, :password_confirmation)
  end
end
