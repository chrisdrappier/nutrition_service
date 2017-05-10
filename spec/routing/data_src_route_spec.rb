require 'spec_helper'
describe 'Routes' do
  describe 'data_srcs' do
    it 'routes to index' do
      expect(get: 'data_src/').to route_to(
        controller: 'data_src',
        action: 'index',
        format: :json
      )
    end
  end
end
