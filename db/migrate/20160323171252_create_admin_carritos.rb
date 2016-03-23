class CreateAdminCarritos < ActiveRecord::Migration
  def change
    create_table :admin_carritos do |t|

      t.timestamps null: false
    end
  end
end
