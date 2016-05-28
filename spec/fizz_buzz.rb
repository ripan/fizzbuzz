require_relative '../lib/fizz_buzz'

describe FizzBuzz do

  context "without specifying any max Viewing Value(limit) " do
    before { @fizzBuzz  = FizzBuzz.new  }

    it "should return 1000000 records" do
      expect(@fizzBuzz.range.length).to eq 1000000
    end
  end

  context "with specifying a max Viewing Value(limit) " do

    context "with max Viewing Value 10" do
      before { @fizzBuzz  = FizzBuzz.new limit: 10}
      it "should return 10 records" do
        expect(@fizzBuzz.range.length).to eq 10
      end
      it "should return 10 formatted records" do
        expect(@fizzBuzz.format_items(@fizzBuzz.range)).to eq [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz"]
      end
    end

    context "with max Viewing Value 20" do
      before {
        @fizzBuzz  = FizzBuzz.new
        @items  = @fizzBuzz.range_by_limit(20)
        @item = @items[rand(@items.length-1)]
      }

      it "should return 20 records" do
        expect(@items.length).to eq 20
      end

      it "should return 20 formatted records" do
        expect(@fizzBuzz.format_items(@items)).to eq [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"]
      end

      it "should return 'Fizz' if item is divisible of 3" do
        expect(@fizzBuzz.format_item(3)).to eq 'Fizz'
        expect(@fizzBuzz.format_item(936)).to eq 'Fizz'
        expect(@fizzBuzz.format_item(9972)).to eq 'Fizz'
      end

      it "should return 'Buzz' if item is divisible of 5" do
        expect(@fizzBuzz.format_item(5)).to eq 'Buzz'
        expect(@fizzBuzz.format_item(940)).to eq 'Buzz'
        expect(@fizzBuzz.format_item(9965)).to eq 'Buzz'
      end

      it "should return 'FizzBuzz' if item is divisible of 3 or 5" do
        expect(@fizzBuzz.format_item(15)).to eq 'FizzBuzz'
        expect(@fizzBuzz.format_item(510)).to eq 'FizzBuzz'
        expect(@fizzBuzz.format_item(9930)).to eq 'FizzBuzz'
      end

    end

  end

end
