require 'fizz_buzz'
require 'presenters/fizz_buzz_presenter'

class PagesController < ApplicationController
  before_action :set_pagination, only: [:home]

  def home
    @fizzbuzz = FizzBuzzPresenter.new(@current_page, @per_page)
  end

  private

  def set_pagination
    @current_page = params[:page] || 1
    @per_page = params[:per_page] || 100
  end
end
