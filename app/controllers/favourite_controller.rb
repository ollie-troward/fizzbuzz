class FavouriteController < ApplicationController
  def add
    begin
      number = Integer(params[:number])
    rescue => _
      render json: "#{params[:number]} is an invalid number", status: 422 and return
    end

    Favourite.create(number: number)
    
    render json: "Number #{number} is now a favourite", status: 200
  end
end
