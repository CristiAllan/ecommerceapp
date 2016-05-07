class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :email, null: false, default: ""
      t.string :role
      t.string :slug

      t.timestamps null: false
    end
  end
end
