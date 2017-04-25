require 'fizz_buzz'

class FizzbuzzController < ApplicationController
  # respond_to :json

  def index
    render json: FizzBuzz.new(1, 100).run, status: 200
  end
end
