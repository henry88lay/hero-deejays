class Dj < ApplicationRecord
  has_many :booking
  belongs_to :user
end
