require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:pictures) }

    it { should have_many(:follow_requests) }

    it { should have_many(:followers) }

    it { should have_many(:tags) }

    it { should have_many(:likes) }

    it { should have_many(:comments) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
