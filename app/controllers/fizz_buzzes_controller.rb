class FizzBuzzesController < ApplicationController
  before_action :set_pagination, only: [:index]

  def index
    @fizzbuzz = FizzBuzzPresenter.new(@current_page, @per_page)
  end

  private

  def set_pagination
    @current_page = params[:page] || 1
    @per_page = params[:per_page] || 100
  end
end
