require 'rails_helper'
describe DataSrcController, type: :controller do
  describe '#index' do
    before do
      get :index
    end

    it 'has a successful response' do
      expect(response.status).to eq(200)
    end
  end

  describe '#show' do
    before do
      get :show, id: 123
    end

    it 'shows the object' do
      expect(response.status).to eq(200)
    end
  end
end
