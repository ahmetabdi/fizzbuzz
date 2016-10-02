module Api::V1
  class FavouritesController < BaseApiController

    # POST /v1/favourites
    def create
      @favourite = Favourite.new(number: params[:number])

      if @favourite.save
        render json: 'Favourite was successfully created.'
      else
        render json: 'Favourite could not be successfully created.'
      end
    end

    # DELETE /v1/favourites/:number
    def destroy
      @favourite = Favourite.find_by_number(params[:number])

      if @favourite
        if @favourite.destroy
          render json: 'Favourite was successfully destroyed.'
        else
          render json: 'Favourite could not be successfully destroyed.'
        end
      else
        render json: 'Favourite could not be found.'
      end
    end
  end
end
