class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Display home toolbar - use: before_filter :home_toolbar
  def home_toolbar
    @home_toolbar = true
  end

end
