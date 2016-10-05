class Visitor < ApplicationRecord
  validates :name, :arrived_at, :status, presence: true
end
