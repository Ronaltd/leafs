class Basket < ApplicationRecord
  belongs_to :user
  belongs_to :coupon
end
