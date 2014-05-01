class Category < ActiveRecord::Base
  has_many :children, class_name: 'Category',
                      foreign_key: 'category_id'

  belongs_to :parent, class_name: 'Category',
                      foreign_key: 'category_id'
end
