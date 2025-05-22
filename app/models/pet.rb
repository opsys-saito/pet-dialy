class Pet < ApplicationRecord
  enum :animal_type, { dog: 0, cat: 1 }, validate: { allow_nil: true }

  belongs_to :user
end
