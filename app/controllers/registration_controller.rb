class RegistrationController < Devise::RegistrationController
  private

  def sign_up_params
    params.require(:user).permit(:display_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:display_name, :email, :password, :password_confirmation, :current_password)
  end
end
