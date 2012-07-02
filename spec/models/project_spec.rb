require 'spec_helper'

describe Project do
  describe "validations" do
    it "validates the presence of name" do
      project = FactoryGirl.build(:project)
      project.name = ''
      project.should_not be_valid
    end
  end
end