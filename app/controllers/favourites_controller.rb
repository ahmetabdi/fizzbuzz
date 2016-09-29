class FavouritesController < ApplicationController
  before_action :set_favourite, only: [:destroy]

  # POST /favourites
  # POST /favourites.json
  def create
    @favourite = Favourite.new(favourite_params)

    respond_to do |format|
      if @favourite.save
        format.html { redirect_back notice: 'Favourite was successfully created.', fallback_location: root_path }
        format.json { render :show, status: :created, location: @favourite }
      else
        format.html { render :new }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1
  # DELETE /favourites/1.json
  def destroy
    @favourite.destroy
    respond_to do |format|
      format.html { redirect_back notice: 'Favourite was successfully destroyed.', fallback_location: root_path }
      format.json { head :no_content }
    end
  end

  private
    def set_favourite
      @favourite = Favourite.find_by_number(params[:number])
    end

    def favourite_params
      params.permit(:number)
    end
end
