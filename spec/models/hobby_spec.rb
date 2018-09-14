require 'rails_helper'

describe Hobby do
  it { should validate_presence_of :name}
  it { should validate_presence_of :description}
end
