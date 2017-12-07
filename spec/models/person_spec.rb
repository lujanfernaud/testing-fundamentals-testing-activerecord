require "spec_helper"

describe Person do
  describe "validations" do
    it "is valid with a first name" do
      person = described_class.new(first_name: "Dong")

      person.save

      expect(person).to be_valid
    end

    it "is not valid with a blank first name" do
      person = described_class.new(first_name: "")

      person.save

      expect(person).not_to be_valid
    end

    it "is not valid without a first name" do
      person = described_class.new(first_name: nil)

      person.save

      expect(person).not_to be_valid
    end
  end
end
