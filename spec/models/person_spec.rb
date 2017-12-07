require "spec_helper"

describe Person do
  describe "requires a name to be valid" do
    it "is valid with a name" do
      person = described_class.new(first_name: "Dong")

      person.save

      expect(person).to be_valid
    end

    it "is not valid without a name" do
      person = described_class.new(first_name: nil)

      person.save

      expect(person).not_to be_valid
    end

    it "is not valid with an empty string" do
      person = described_class.new(first_name: "")

      person.save

      expect(person).not_to be_valid
    end
  end
end
