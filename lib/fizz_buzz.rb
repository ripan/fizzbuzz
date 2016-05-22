class FizzBuzz
  attr_accessor :range
  LIMIT = 20 # 100000000000

  def initialize
  	@range = []
    set_range
  end

  def set_range 
    (1..LIMIT).each do |i|
      tmp = ''
      tmp += 'Fizz' if i%3==0
      tmp += 'Buzz' if i%5==0
      @range.push(tmp.empty? ? i : tmp);
    end
  end

end
