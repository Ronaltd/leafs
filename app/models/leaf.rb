class Leaf < ApplicationRecord
  belongs_to :user
  belongs_to :dropoff, optional: true
  has_many :items
  validates :credit, numericality: { only_integer: true }
end
