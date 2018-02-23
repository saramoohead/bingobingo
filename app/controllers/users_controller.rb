# Handles incoming user authentication
class UsersController < Clearance::UsersController

  before_action :find_organisation, only: [:new, :create]

  private

  def find_organisation
    @organisation = Organisation.find(params[:organisation_id])
  end

  def user_from_params
    super.tap do |user|
      user.organisation = @organisation
    end
  end

  # def user_params
  #   params.require(:user).permit(:organisation_id, :email, :password)
  # end
end
