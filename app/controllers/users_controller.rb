class UsersController < ApplicationController
  def edit
    @c_user = Current.user
  end

  def update
    if Current.user.update(user_params)
      redirect_to root_path, notice: "Information updated!"
    else
      render :edit
    end
  end

  def view
  end

  def rides
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
