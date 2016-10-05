class Host < ApplicationRecord
  validates :name, :location, presence: true
end
