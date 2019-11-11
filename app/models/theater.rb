class Theater < ApplicationRecord
  has_many :shows
  has_one :movie
end
