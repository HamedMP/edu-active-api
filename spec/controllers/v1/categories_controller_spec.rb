require 'spec_helper'

describe V1::CategoriesController do
  before { request.accept = 'application/json' }

  describe "'GET' index" do
    let(:action) { get :index }

    let!(:cat1) { create :category, title: 'Category 1', slug: 'category-1', order: 1 }
    let!(:cat2) { create :category, title: 'Category 2', slug: 'category-2', order: 2 }
    let!(:cat3) { create :category, title: 'Category 3', slug: 'category-3', order: 1, parent: cat2 }

    before { action }

    it { should respond_with(:success)  }
    it { expect(response.header['Content-Type']).to include('application/json') }
    it { expect(JSON.parse(response.body)['categories']).to have(2).categories }
  end
end
