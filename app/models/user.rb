class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :host
  has_many :visitors, through: :host
  has_many :created_visitors, class_name: 'Visitor', inverse_of: :creator
end
