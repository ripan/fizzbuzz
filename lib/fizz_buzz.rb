class FizzBuzz
  attr_accessor :range, :limit
  LIMIT = 1000000 # 100000000000

  def initialize(options = {})
    @limit = options[:limit] || LIMIT
    @range = (1..@limit.to_i).to_a
  end

  def format fizzbuzz_arr
    fizzbuzz_arr.map{ |i| display i }
  end

  def display num
    tmp = ''
    tmp += 'Fizz' if num%3==0
    tmp += 'Buzz' if num%5==0
    tmp.empty? ? num : tmp
  end

end
