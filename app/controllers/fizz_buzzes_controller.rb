require 'fizz_buzz'
require 'presenters/fizz_buzz_presenter'

class FizzBuzzesController < ApplicationController
  before_action :set_pagination, only: [:index]

  def index
    @fizzbuzz = FizzBuzzPresenter.new(@current_page, @per_page)
  end

  def show
    @fizzbuzz = FizzBuzz.calculate(params[:number].to_i)

    respond_to do |format|
      format.json { render json: @fizzbuzz, status: :ok }
    end
  end

  private

  def set_pagination
    @current_page = params[:page] || 1
    @per_page = params[:per_page] || 100
  end
end
