class Basket < ApplicationRecord
  belongs_to :user
  belongs_to :coupon
  validates :debit, presence: true, numericality: { only_integer: true }
end
