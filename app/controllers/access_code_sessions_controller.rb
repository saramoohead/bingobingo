# control access to organisations via an access code session
class AccessCodeSessionsController < ApplicationController
  def new
    @organisation = Organisation.find(params_id)
  end

  def create
    if access_code == params[:code]
      session[:access_organisation] = params_id
      redirect_to organisation_path(params_id)
    else
      redirect_to new_access_organisation_path(params_id)
    end
  end

  private

  def params_id
    params[:id]
  end

  def access_code
    AccessCode.where(organisation_id: params[:id]).sort.map(&:picture_id).join("")
  end
end
