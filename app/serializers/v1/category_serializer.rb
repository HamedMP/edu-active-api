class V1::CategorySerializer < ActiveModel::Serializer
  cached

  attributes :title, :slug, :order

  has_many :children, serializer: V1::CategorySerializer

  def cache_key
    [object, scope]
  end
end
