class Users::PetsController < UsersController
  def index
  end

  def new
    @pet = current_user.pets.new
  end

  def create
    @pet = current_user.pets.create pet_params
  end

  private
    def set_pet
      @pet = current_user.pets.find params[:id]
    end

    def pet_params
      params.expect pet: %i[name animal_type]
    end
end
