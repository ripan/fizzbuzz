class FizzBuzz
  attr_accessor :range, :limit
  LIMIT = 1000000 # 100000000000

  def initialize(options = {})
    @limit = options[:limit] || LIMIT
    @range = (1..@limit.to_i).to_a
  end

  def range_by_limit  limit
    @range = (1..limit.to_i).to_a
  end

  def format_items fizzbuzz_arr
    fizzbuzz_arr.map{ |i| format_item i }
  end

  def format_item num
    tmp = ''
    tmp += 'Fizz' if num%3==0
    tmp += 'Buzz' if num%5==0
    tmp.empty? ? num : tmp
  end

end