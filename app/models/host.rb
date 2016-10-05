# it's a role of the user
class Host < ApplicationRecord
  belonngs_to :user
  has_many :visitors

  validates :name, :location, presence: true
end
