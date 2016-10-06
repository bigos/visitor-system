class Visitor < ApplicationRecord
  belongs_to :host, optional: true
  belongs_to :creator, class_name: 'User', inverse_of: :created_visitors

  validates :name, :arrived_at, :status, presence: true
  validates :host_id, presence: false

  # TODO: what about those statuses
  validates :status, inclusion: { in: %w(expected present overstayed departed) }

  scope :present, -> { where.not(arrived_at: nil).where.not(status: 'departed') }

  def depart!
    self.status = 'departed'
    self.departed_at = Time.now
    self.save
  end
end
