class Booking < ApplicationRecord
  belongs_to :user, foreign_key: :renter_id
  belongs_to :dj
  validates :start_date, :end_date, presence: true
end
