class Coupon < ApplicationRecord
  belongs_to :company
  has_many :baskets
end
