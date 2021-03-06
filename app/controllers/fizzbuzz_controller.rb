require 'fizz_buzz'
require 'paginator'

class FizzbuzzController < ApplicationController
  def index
    start, finish = Paginator.new(params[:page], params[:limit]).paginate
    begin
      render json: FizzBuzz.new(start, finish, Favourite.all.map(&:number)).run, status: 200
    rescue => _
      render json: 'FizzBuzz not found', status: 404
    end
  end
end
