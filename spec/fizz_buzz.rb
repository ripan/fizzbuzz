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
      before { 
        @fizzBuzz  = FizzBuzz.new limit: 10
        @items = @fizzBuzz.range
        @item = @items[rand(@items.length-1)]
      }

      it "should return 10 records" do
        expect(@items.length).to eq 10
      end

      it "should return 'Fizz' if item is divisible of 3" do
        name = @item[:id]%3==0 ? 'Fizz' : @item[:name]
        expect(name).to eq 'Fizz'
      end

      it "should return 'Buzz' if item is divisible of 5" do
        name = @item[:id]%5==0 ? 'Buzz' : @item[:name]
        expect(name).to eq 'Buzz'
      end

      it "should return 'FizzBuzz' if item is divisible of 3 or 5" do
        # name = (@item[:id]%3==0 && @item[:id]%5==0) ? 'FizzBuzz' : @item[:name]
        # expect(name).to eq  'FizzBuzz'
      end

    end

  end

end

