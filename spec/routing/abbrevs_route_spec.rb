require 'rails_helper'
describe 'Routes' do
  describe 'abbrevs' do
    it 'routes to index' do
      expect(get: 'abbrevs/').to route_to(
        controller: 'abbrevs',
        action: 'index'
      )
    end

    it 'routes to show' do
      expect(get: 'abbrevs/123').to route_to(
        controller: 'abbrevs',
        action: 'show',
        id: '123'
      )
    end
  end
end
