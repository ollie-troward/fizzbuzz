class FavouriteController < ApplicationController
  def add
    Favourite.create(number: params[:number])
    render json: "Number #{params[:number]} is now a favourite", status: 200
  end
end
