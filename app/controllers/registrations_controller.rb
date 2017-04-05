class RegistrationsController < Devise::RegistrationsController

  private

  # Devise strong params for accepting newly added params
  # If a param isn't added here, it won't be saved to DB
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  # defining what admin params can be updated
  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  end

end
