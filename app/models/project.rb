class Project < ApplicationRecord
  has_one_attached :image
  validates :name, :presence => true
  validates :description, :presence => true
  validates :repo_link, :presence => true
  validates :deployment_link, :presence => true
end
