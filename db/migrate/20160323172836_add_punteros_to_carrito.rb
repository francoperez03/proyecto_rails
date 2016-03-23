class AddPunterosToCarrito < ActiveRecord::Migration
  def change
    add_reference :admin_carritos, :user, index: true, foreign_key: true
    add_reference :admin_carritos, :product, index: true, foreign_key: true
  end
end
