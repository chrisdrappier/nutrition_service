require 'rails_helper'
describe AbbrevsController, type: :controller do
  describe '#index' do
    before do
      get :index
    end

    it 'has a successful response' do
      expect(response.status).to eq(200)
    end
  end

  describe '#show' do
    let(:abbrev) { double(:abbrev, id: 123) }
    before do
      allow(controller).to receive(:abbrev).and_return(abbrev)
      get :show, id: abbrev.id
    end

    it 'shows the object' do
      expect(response.status).to eq(200)
    end
  end
end
