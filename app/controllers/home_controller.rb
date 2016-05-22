class HomeController < ApplicationController

  def index
    fizzBuzz = FizzBuzz.new
    fizzBuzz_range = Kaminari.paginate_array(fizzBuzz.range).page(params[:page]).per(params[:page_size])

    render  json: fizzBuzz_range
  end

end
