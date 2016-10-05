class Visitor < ApplicationRecord
  validates :name, :arrived_at, :status, presence: true
  validates :status, inclusion: { in: %w(expected present overstayed departed) }
end
