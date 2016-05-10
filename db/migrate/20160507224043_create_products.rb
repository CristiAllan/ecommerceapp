class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :slug
      t.references :category, index: true, foreign_key: true
      t.string :price
      t.string :maker

      t.timestamps null: false
    end
  end
end
