class UmarcasController < ApplicationController
  def index
  	 @products = Product.all
  	 @marcas = Marca.order('nombre asc') 	 
  end
  def show
  	 @product = Product.find(params[:id])
  end

end
