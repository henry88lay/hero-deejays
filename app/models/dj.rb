class Dj < ApplicationRecord
  has_many :bookings, dependent: :destroy
  # belong_to :user 
  validates :name, :address, :dj_price, :description, :email, presence: true
end
