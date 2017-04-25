require 'fizz_buzz'

class FizzbuzzController < ApplicationController
  def index
    start = 1
    finish = 100

    if params.has_key?(:page)
      page = Integer(params[:page]) rescue false
    end

    if page
      start = 1 + ((page - 1) * 100)
      finish = 100 + ((page - 1) * 100)
    end

    begin
      render json: FizzBuzz.new(start, finish).run, status: 200
    rescue => _
      render json: 'FizzBuzz not found', status: 404
    end
  end
end
