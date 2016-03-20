class CreateAdminMarcas < ActiveRecord::Migration
  def change
    create_table :admin_marcas do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
