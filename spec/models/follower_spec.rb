require 'rails_helper'

RSpec.describe Follower, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:follower) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
