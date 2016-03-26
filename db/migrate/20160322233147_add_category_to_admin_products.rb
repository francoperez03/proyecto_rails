class AddCategoryToAdminProducts < ActiveRecord::Migration
  def change
    add_reference :admin_products, :admin_category, index: true, foreign_key: true
    add_reference :admin_products, :admin_marca, index: true, foreign_key: true
  end
end
