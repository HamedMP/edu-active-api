class V1::CategorySerializer < ActiveModel::Serializer
  attributes :title, :slug, :order

  has_many :children, serializer: V1::CategorySerializer
end
