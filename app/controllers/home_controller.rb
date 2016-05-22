class HomeController < ApplicationController

  PER_PAGE_RECORDS = 10
  PAGE = 1

  def index
    fizzBuzz = FizzBuzz.new
    @arr_name = fizzBuzz.range
    fizzBuzz_range = Kaminari.paginate_array(fizzBuzz.range).page(PAGE).per(PER_PAGE_RECORDS)
    render  json: fizzBuzz_range
  end

end
