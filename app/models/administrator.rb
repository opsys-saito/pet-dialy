class Administrator < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :lockable, :timeoutable
end
