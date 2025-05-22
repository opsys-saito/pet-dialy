class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable

  before_create :set_uuid

  private
    def set_uuid
      until id
        uuid = SecureRandom.uuid
        self.id = uuid unless self.class.find_by id: uuid
      end
    end
end
