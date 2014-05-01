class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :slug, :order
end
