# Handles incoming user authentication
class UsersController < Clearance::UsersController
  def create
    super
  end

  def delete
    session[:access_organisation] = nil
    super
  end

  private

  def user_from_params
    super.tap do |user|
      user.organisation ||= Organisation.new
    end
  end

  def user_params
    params.permit(user: [:email,
                         :password,
                         { organisation_attributes: [:name] }])[:user] ||
      {}
  end
end
