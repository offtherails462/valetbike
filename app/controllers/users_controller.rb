class UsersController < ApplicationController
  def edit
  end

  def update
    if Current.user.update(user_params)
      redirect_to root_path, notice: "Information updated!"
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
