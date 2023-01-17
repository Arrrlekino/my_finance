class Operation < ApplicationRecord
  belongs_to :category

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :odate, presence: true, length: { minimum: 1 }
  validates :description, uniqueness: true, presence: true, length: { minimum: 1 }
end
