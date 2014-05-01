require 'spec_helper'

describe V1::CategoriesController do
  describe 'routes' do
    it { expect(get: '/v1/categories/slug').to route_to 'v1/categories#show', id: 'slug', format: 'json' }
  end

  describe 'routing helpers' do
    let(:category) { build :category, slug: 'slug' }

    it { expect(v1_category_path(category)).to eql '/v1/categories/slug'}
  end
end
