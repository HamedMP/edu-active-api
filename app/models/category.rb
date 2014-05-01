class Category < ActiveRecord::Base
  default_scope { order(:order) }

  has_many :children, class_name: 'Category',
                      foreign_key: 'category_id'

  belongs_to :parent, class_name: 'Category',
                      foreign_key: 'category_id'

  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
end
