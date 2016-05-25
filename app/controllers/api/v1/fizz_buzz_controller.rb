class Api::V1::FizzBuzzController < ApplicationController

  def index
    fizzBuzz = FizzBuzz.new limit: params[:maxViewingValue]
    fizzBuzz_range = Kaminari.paginate_array(fizzBuzz.range).page(params[:page]).per(params[:page_size])
    render  json: fizzBuzz_range
  end

end
