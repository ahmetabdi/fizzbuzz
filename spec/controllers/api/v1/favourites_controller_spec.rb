require 'rails_helper'

RSpec.describe Api::V1::FavouritesController, type: :controller do
  let(:valid_attributes) {
    {number: 1}
  }

  let(:valid_session) { {} }

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Favourite' do
        expect {
          post :create, params: valid_attributes, session: valid_session
        }.to change(Favourite, :count).by(1)
      end

      it 'assigns a newly created favourite as @favourite' do
        post :create, params: valid_attributes, session: valid_session
        expect(assigns(:favourite)).to be_a(Favourite)
        expect(assigns(:favourite)).to be_persisted
      end

      it 'returns a 200 status code' do
        post :create, params: valid_attributes, session: valid_session
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested favourite' do
      favourite = Favourite.create!(number: 2)
      expect {
        delete :destroy, params: {number: 2}, session: valid_session
      }.to change(Favourite, :count).by(-1)
    end

    it 'returns a 200 status code' do
      post :create, params: valid_attributes, session: valid_session
      expect(response.status).to eq(200)
    end
  end
end
