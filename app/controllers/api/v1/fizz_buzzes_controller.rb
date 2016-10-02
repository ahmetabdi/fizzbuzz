module Api::V1
  class FizzBuzzesController < BaseApiController
    # GET /v1/fizz_buzzes/:number
    def show
      render json: FizzBuzz.calculate(params[:number].to_i)
    end
  end
end
