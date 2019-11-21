class RegistrationsController < Devise::RegistrationsController
	  

	  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :title, :workplace, :workcommune, :competance, :method )
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :title, :workplace, :workcommune, :competance, :method)
  end

