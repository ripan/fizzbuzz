class FizzBuzz
  attr_accessor :range, :limit
  LIMIT = 1000000 # 100000000000

  def initialize(options = {})
    @range = []
    @limit = options[:limit] || LIMIT
    set_range
  end

  def set_range
    @range = (1..@limit.to_i).map do |i|
      display i
    end
  end

  def display num
    tmp = ''
    tmp += 'Fizz' if num%3==0
    tmp += 'Buzz' if num%5==0
    {id:num, name:tmp.empty? ? num : tmp}
  end

end
