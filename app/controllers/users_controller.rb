# Handles incoming user authentication
class UsersController < Clearance::UsersController
  private

  def user_params
    params.require(:user).permit(:organisation_id, :email, :password)
  end
end
