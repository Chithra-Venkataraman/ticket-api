class Show < ApplicationRecord
  belongs_to :theater
  has_many :seats
end
