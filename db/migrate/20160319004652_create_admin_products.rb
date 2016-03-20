class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_products do |t|
      t.string :codigo
      t.float :precio
      t.text :description
      t.references :marca, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
