class FizzBuzz
  attr_accessor :range
  PAGE_SIZE = 10

  def initialize
    set_range
  end

  def set_range 
    @range = []
    (1..PAGE_SIZE).each do |i|
      tmp = ''
      tmp += 'Fizz' if i%3==0
      tmp += 'Buzz' if i%5==0
      @range.push(tmp.empty? ? i : tmp);
    end
  end

end
