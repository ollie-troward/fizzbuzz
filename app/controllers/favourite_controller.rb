class FavouriteController < ApplicationController
  def add
    render json: "Number #{params[:number]} is now a favourite", status: 200
  end
end
