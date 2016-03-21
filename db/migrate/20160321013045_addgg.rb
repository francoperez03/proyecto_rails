class Addgg < ActiveRecord::Migration
  def change
  	add_attachment :admin_products,:image
  end
end

