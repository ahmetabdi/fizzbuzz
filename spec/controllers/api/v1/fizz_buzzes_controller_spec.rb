require 'rails_helper'

RSpec.describe Api::V1::FizzBuzzesController, type: :controller do
  let(:valid_attributes) {
    {number: number}
  }

  let(:number) { 5 }

  let(:valid_session) { {} }

  describe 'GET #show' do
    context 'with valid params' do

      context 'when the number is 3' do
        let(:number) { 3 }

        it 'returns Buzz' do
          get :show, params: valid_attributes, session: valid_session
          expect(response.body).to eq('Fizz')
        end
      end

      context 'when the number is 5' do
        let(:number) { 5 }

        it 'returns Buzz' do
          get :show, params: valid_attributes, session: valid_session
          expect(response.body).to eq('Buzz')
        end
      end

      context 'when the number is 15' do
        let(:number) { 15 }

        it 'returns Buzz' do
          get :show, params: valid_attributes, session: valid_session
          expect(response.body).to eq('FizzBuzz')
        end
      end

      it 'should return a 200 status code' do
        get :show, params: valid_attributes, session: valid_session
        expect(response.status).to eq(200)
      end
    end
  end
end
