require 'rails_helper'

RSpec.describe Seedable do

  describe "Seedable" do
    let(:seed) { described_class.new("items") }

    it "has a file_path" do
      expect(seed).to respond_to(:file_path)
    end

    it "returns an array" do
    end
  end
end
