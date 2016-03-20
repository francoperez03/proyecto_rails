class CreateAdminCategories < ActiveRecord::Migration
  def change
    create_table :admin_categories do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
