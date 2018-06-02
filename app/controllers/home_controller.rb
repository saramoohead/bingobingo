# controls the rendering of the home page
class HomeController < ApplicationController
  def show
    if signed_in?
      render "home/admin_home"
    elsif logged_in_with_access_code
      render "home/organisation_access_home"
    else
      render "home/new_visitor_home"
    end
  end
end
