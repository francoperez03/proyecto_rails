class CreateCarritos < ActiveRecord::Migration
  def change
    create_table :carritos do |t|
      t.references :user, index: true, foreign_key: true
      t.references :admin_product, index: true, foreign_key: true
    end
  end
end
