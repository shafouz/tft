require 'rails_helper'

RSpec.describe Seedable do
  # stub the json response
  describe "Seedable" do
    let(:seed) { described_class.new("items") }

    it "returns an array" do
      expect(seed.keys).to be_an(Array)
    end

    it "returns unique keys" do
      expect(seed.keys).to eql(["item_id", "name", "description", "is_unique", "is_shadow", "shadow_penalty", "shadow_bonus"])
    end

    it "converts hash keys to underscore" do
      expect(seed.seedable_hashes[0]).to have_key("is_unique")
    end
  end
end
