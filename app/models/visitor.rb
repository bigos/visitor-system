class Visitor < ApplicationRecord
  belongs_to :host, optional: true
  belongs_to :creator, class_name: 'User', inverse_of: :created_visitors

  validates :name, :arrived_at, :status, presence: true
  validates :host_id, presence: false
  validates :status, inclusion: { in: %w(expected present overstayed departed) }
end
