class Observation < ApplicationRecord
  belongs_to :user
  has_one :bird
  validates :name, uniqueness: { scope: :season, message: "should be added once per season" }
  validates :max_number, numericality: { greater_than: 0 }
end
