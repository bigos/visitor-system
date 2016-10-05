class Visitor < ApplicationRecord
  belongs_to :host
  belongs_to :creator, class_name: 'User', inverse_of: :created_visitors

  validates :name, :arrived_at, :status, presence: true
  validates :status, inclusion: { in: %w(expected present overstayed departed) }
end
