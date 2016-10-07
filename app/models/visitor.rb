class Visitor < ApplicationRecord
  belongs_to :host, optional: true
  belongs_to :creator, class_name: 'User', inverse_of: :created_visitors

  validates :name, :arrived_at, :status, presence: true
  validates :host_id, presence: false

  STATUSES = %w(expected present overstayed departed)
  # TODO: what about those statuses
  validates :status, inclusion: { in: STATUSES }

  scope :present, -> { where(status: 'present') }

  def depart!
    self.status = 'departed'
    self.departed_at = Time.now
    self.save
  end
end
