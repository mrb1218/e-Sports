class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :authenticate_user!

  helper_method :mailbox, :conversation, :current_league

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

  def current_league
  end


  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit(:first_name, :last_name, :username, :email, :password)
  end
end

end
