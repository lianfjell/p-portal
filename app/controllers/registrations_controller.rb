class UsersController < ApplicationController
	  

	  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :title, :workplace, :workcommune, :competance, :method, :avatar)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :title, :workplace, :workcommune, :competance, :method, :avatar)
  end

end
