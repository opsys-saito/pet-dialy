class Users::PetsController < UsersController
  before_action :set_pet, only: %i[edit update destroy]

  def index
  end

  def new
    @pet = current_user.pets.new
  end

  def create
    @pet = current_user.pets.create pet_params
    if @pet.persisted?
      redirect_to users_pets_url, notice: "#{Pet.model_name.human}を作成しました。"
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @pet.update pet_params
      redirect_to users_pets_url, notice: "#{Pet.model_name.human}を更新しました。"
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    if @pet.destroy
      redirect_to users_pets_url, notice: "#{Pet.model_name.human}を削除しました。"
    else
      render "edit", status: :unprocessable_entity
    end
  end

  private
    def set_pet
      @pet = current_user.pets.find params[:id]
    end

    def pet_params
      params.expect pet: %i[animal_type birthed_on gender name note]
    end
end
