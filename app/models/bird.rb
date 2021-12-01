class Bird < ApplicationRecord
  has_one :observation
  validates :name, presence: true, uniqueness: true
end
