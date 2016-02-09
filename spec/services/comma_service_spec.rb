require 'rails_helper'
require 'comma_service'

RSpec.describe CommaService do

  context "input string has no decimal point" do
    describe "an input string containing 9 characters with a comma interval of 2" do
      it "returns a string with 4 commas from right to left" do
        commafied_string = CommaService::commafied({interval: 2, string: "123456789"})
        expect(commafied_string).to eql "1,23,45,67,89"
      end
    end

    describe "an input string containing 9 characters with a comma interval of 3" do
      it "returns a string with 2 commas from right to left" do
        commafied_string = CommaService::commafied({interval: 3, string: "123456789"})
        expect(commafied_string).to eql "123,456,789"
      end
    end

    describe "an input string containing 9 characters with a comma interval of 4" do
      it "returns a string with 2 commas from right to left" do
        commafied_string = CommaService::commafied({interval: 4, string: "123456789"})
        expect(commafied_string).to eql "1,2345,6789"
      end
    end
  end

  context "input string is a floating point number" do
    describe "an input string containing 15 characters, a decimal point with a comma interval of 2" do
      it "returns a string with 4 commas to the left of the decimal point" do
        commafied_string = CommaService::commafied({interval: 2, string: "123456789.123456"})
        expect(commafied_string).to eql "1,23,45,67,89.123456"
      end
    end
  end

end
