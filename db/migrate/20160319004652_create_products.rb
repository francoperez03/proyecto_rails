class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :codigo
      t.float :precio
      t.text :description
      

      t.timestamps null: false
    end
  end
end
