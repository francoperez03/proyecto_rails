class MarcasController < ApplicationController
  def index
  	 @admin_products = Admin::Product.all
  	 @admin_marcas = Admin::Marca.order('nombre asc') 	 
  end
  def show
  	 @admin_product = Admin::Product.find(params[:id])
  end

end
