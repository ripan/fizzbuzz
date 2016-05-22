class FizzBuzz
  attr_accessor :range
  LIMIT = 1000000 # 100000000000

  def initialize
  	@range = []
    set_range
  end

  def set_range 
    @range = (1..LIMIT).map do |i|
      tmp = ''
      tmp += 'Fizz' if i%3==0
      tmp += 'Buzz' if i%5==0
      tmp.empty? ? i : tmp
    end
  end

end
