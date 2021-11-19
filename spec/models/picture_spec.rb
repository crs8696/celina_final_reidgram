require 'rails_helper'

RSpec.describe Picture, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:photo_uploader) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
