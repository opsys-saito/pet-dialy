class Pet < ApplicationRecord
  enum :animal_type, { none: 0, dog: 1, cat: 1 }, prefix: true, validate: true
  enum :gender, { none: 0, male: 1, female: 2 }, prefix: true, validate: true

  validates :name, presence: true, length: { maximum: 255 }
  validates :note, length: { maximum: 255 }

  belongs_to :user
end
