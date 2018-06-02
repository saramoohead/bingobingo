# control access to organisations via an access code session
class AccessCodeSessionsController < ApplicationController
  def new
    session[:access_organisation] = nil
  end

  def create
    if access_code == params[:code]
      session[:access_organisation] = params_id
      redirect_to organisation_path(params_id)
    else
      redirect_to new_access_organisation_path(params_id)
    end
  end

  def destroy
    session.delete(:access_organisation)
    redirect_to root_path
  end

  private

  def params_id
    params[:id]
  end

  def access_code
    organisation.access_code_string
  end

  def organisation
    @organisation ||= Organisation.find(params_id)
  end
end
