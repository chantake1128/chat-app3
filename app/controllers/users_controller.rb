class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :editcurrent_user.update(user_params)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
