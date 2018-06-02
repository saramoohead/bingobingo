# parent controller
class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception

  def logged_in_with_access_code
    session[:access_organisation]
  end
  helper_method :logged_in_with_access_code
end
