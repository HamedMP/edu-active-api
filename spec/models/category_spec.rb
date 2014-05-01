require 'spec_helper'

describe Category do
  describe 'associations' do
    let!(:parent) { create :category }
    let!(:child1) { create :category }
    let!(:child2) { create :category }

    before do
      parent.children << child1
      parent.children << child2
    end

    it 'has children' do
      expect(parent.children).to have(2).items
    end

    it 'has parent' do
      expect(child1.parent).to eql parent
    end
  end

  describe 'default scope' do
    let!(:cat1) { create :category, order: 2 }
    let!(:cat2) { create :category, order: 3 }
    let!(:cat3) { create :category, order: 1 }

    it 'sorts by order' do
      expect(Category.all).to eq [cat3, cat1, cat2]
    end
  end
end
