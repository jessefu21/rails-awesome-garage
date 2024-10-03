class Car < ApplicationRecord
  belongs_to :owner, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :favorites,  dependent: :destroy


  validates :brand, :model, :fuel, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
end
