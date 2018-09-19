class Skill < ApplicationRecord
  has_one_attached :image
  validates :name, :presence => true
  validates :experience, :presence => true
  validates :experience, numericality: { only_integer: true }
end
