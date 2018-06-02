# controls the rendering of organisation pages
class OrganisationsController < ApplicationController
  def show
    if logged_in_with_access_code
      @organisation = Organisation.find(session[:access_organisation])
    else
      redirect_to new_access_organisation_path(params[:id])
    end
  end
end
