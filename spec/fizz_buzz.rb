require_relative '../lib/fizz_buzz'

describe FizzBuzz do

  context "with out specifying any max Viewing Value(limit) " do
    before { @fizzBuzz  = FizzBuzz.new  }

    it "should return 1000000 records" do
      expect(@fizzBuzz.range.length).to eq 1000000
    end
  end

  context "with specifying a max Viewing Value(limit) " do


    context "with max Viewing Value 100" do
      before { @fizzBuzz  = FizzBuzz.new limit: 100}
      it "should return 100 records" do
        expect(@fizzBuzz.range.length).to eq 100
      end
    end

    context "with max Viewing Value 10000" do
      before { @fizzBuzz  = FizzBuzz.new limit: 10000}
      it "should return 10000 records" do
        expect(@fizzBuzz.range.length).to eq 10000
      end
    end

  end

end

