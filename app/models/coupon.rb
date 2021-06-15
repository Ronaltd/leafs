class Coupon < ApplicationRecord
  belongs_to :company
  has_many :baskets
  validates :discount, :code, presence: true
  validates :leafs_value, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
