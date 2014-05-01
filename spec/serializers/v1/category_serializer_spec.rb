require 'spec_helper'

describe V1::CategorySerializer do
  context 'ordinary category' do
    let(:category) { build :category, title: 'Category', slug: 'category', order: 1 }
    subject { V1::CategorySerializer.new(category).to_json }
    it do
      should eql({
        category: {
          title: 'Category',
          slug: 'category',
          order: 1,
          children: []
        }
      }.to_json)
    end
  end

  context 'with parent' do
    let!(:category) { create :category, title: 'Category', slug: 'category', order: 1 }
    let!(:child1) { create :category, title: 'Child 1', slug: 'child-1', order: 1, parent: category }
    let!(:child2) { create :category, title: 'Child 2', slug: 'child-2', order: 2, parent: category }
    subject { V1::CategorySerializer.new(category.reload).to_json }
    it do
      should eql({
        category: {
          title: 'Category',
          slug: 'category',
          order: 1,
          children: [
            {
              title: 'Child 1',
              slug: 'child-1',
              order: 1,
              children: []
            },
            {
              title: 'Child 2',
              slug: 'child-2',
              order: 2,
              children: []
            }
          ]
        }
      }.to_json)
    end
  end
end
