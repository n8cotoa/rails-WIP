class Skill < ApplicationRecord
  validates :name, :presence => true
  validates :experience, :presence => true
  validates :experience, numericality: { only_integer: true }
end
