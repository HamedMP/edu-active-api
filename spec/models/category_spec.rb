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
end
