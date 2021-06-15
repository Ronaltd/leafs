class Company < ApplicationRecord
  has_many :coupons
  validates :name, :url, :logo, presence: true
end
