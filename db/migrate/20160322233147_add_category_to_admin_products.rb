class AddCategoryToAdminProducts < ActiveRecord::Migration
  def change
    add_reference :admin_products, :category, index: true, foreign_key: true
    add_references :admin_products, :marca, index: true, foreign_key: true
  end
end
