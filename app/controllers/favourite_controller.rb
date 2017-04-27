class FavouriteController < ApplicationController
  def add
    favourite = Favourite.create(number: params['number'])
    unless favourite.valid?
      render json: "#{params['number']} is an invalid number", status: 422 and return
    end

    render json: "Number #{favourite.number} is now a favourite", status: 200
  end
end
