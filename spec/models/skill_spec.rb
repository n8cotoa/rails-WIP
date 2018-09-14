require 'rails_helper'

describe Skill do
  it { should validate_presence_of :name }
  it { should validate_presence_of :experience }
  it { should validate_numericality_of :experience }

end
