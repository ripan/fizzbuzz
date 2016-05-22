class HomeController < ApplicationController

  def index
    fizzBuzz = FizzBuzz.new
    render  json: fizzBuzz.range
  end

end
