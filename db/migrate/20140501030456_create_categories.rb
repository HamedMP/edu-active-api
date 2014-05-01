class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :slug
      t.integer :order, default: 0
      t.references :category

      t.timestamps
    end
    add_index :categories, :slug
  end
end
