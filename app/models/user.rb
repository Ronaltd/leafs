class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :leafs
  has_many :baskets      
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :leafs_balance, numericality: { only_integer: true }
end

