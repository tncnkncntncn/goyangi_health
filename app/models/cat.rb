class Cat < ApplicationRecord
  belongs_to:user
  has_many:records
  has_one_attached :image
end
