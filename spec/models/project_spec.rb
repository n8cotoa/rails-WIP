require 'rails_helper'

describe Project do
  it {should validate_presence_of :name}
  it {should validate_presence_of :description}
  it {should validate_presence_of :repo_link}
  it {should validate_presence_of :deployment_link}
end
