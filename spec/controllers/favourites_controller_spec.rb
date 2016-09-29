require 'rails_helper'

RSpec.describe FavouritesController, type: :controller do
  let(:valid_attributes) {
    {number: 1}
  }

  let(:invalid_attributes) {
    {number: nil}
  }

  let(:valid_session) { {} }

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Favourite" do
        expect {
          post :create, params: valid_attributes, session: valid_session
        }.to change(Favourite, :count).by(1)
      end

      it "assigns a newly created favourite as @favourite" do
        post :create, params: valid_attributes, session: valid_session
        expect(assigns(:favourite)).to be_a(Favourite)
        expect(assigns(:favourite)).to be_persisted
      end

      it "redirects to the previous location" do
        post :create, params: valid_attributes, session: valid_session
        expect(response).to redirect_to(root_path)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested favourite" do
      favourite = Favourite.create!(number: 2)
      expect {
        delete :destroy, params: {number: 2}, session: valid_session
      }.to change(Favourite, :count).by(-1)
    end

    it "redirects to the previous page" do
      favourite = Favourite.create! valid_attributes
      delete :destroy, params: {number: 1}, session: valid_session
      expect(response).to redirect_to(root_path)
    end
  end
end
