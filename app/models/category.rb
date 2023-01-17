class Category < ApplicationRecord
  has_many :operations

  validates :name, presence: true, uniqueness: true
  validates :description, uniqueness: true, presence: true, length: { minimum: 1 }
end
