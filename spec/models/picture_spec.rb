require "rails_helper"

RSpec.describe Picture, type: :model do
  describe "Direct Associations" do
    it { should have_many(:comments) }

    it { should have_many(:tags) }

    it { should have_many(:likes) }

    it { should belong_to(:photo_uploader) }
  end

  describe "InDirect Associations" do
    it { should have_many(:users) }

    it { should have_many(:viewers) }

    it { should have_many(:comment_givers) }
  end

  describe "Validations" do
  end
end
