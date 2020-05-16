class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :djs, foreign_key: :manager_id
  has_many :bookings, foreign_key: :renter_id
  # validates :name, :address, presence: true
end
