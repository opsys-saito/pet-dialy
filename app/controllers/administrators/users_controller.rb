class Administrators::UsersController < AdministratorsController
  def index
    @users = User.all
  end
end
