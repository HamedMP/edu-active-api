require 'spec_helper'

describe V1::CategoriesController do
  describe 'routes' do
    its(:show) { expect(get: '/v1/categories/slug').to route_to 'v1/categories#show', id: 'slug', format: 'json' }
  end
end
