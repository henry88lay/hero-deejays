class Dj < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_one_attached :image
  # belong_to :user
  validates :name, :address, :dj_price, :description, :email, presence: true
end
