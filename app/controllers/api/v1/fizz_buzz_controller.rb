class Api::V1::FizzBuzzController < ApplicationController

  def index
    fizzBuzz = FizzBuzz.new limit: params[:maxViewingValue]
    fizzBuzz_paginated = Kaminari.paginate_array(fizzBuzz.range).page(params[:page]).per(params[:page_size])
    render  json: fizzBuzz.format(fizzBuzz_paginated)
  end

end
