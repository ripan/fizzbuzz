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
      tmp = ''
      tmp += 'Fizz' if i%3==0
      tmp += 'Buzz' if i%5==0
      tmp.empty? ? i : tmp
    end
  end

end
