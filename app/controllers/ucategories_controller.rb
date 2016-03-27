class UcategoriesController < ApplicationController
  def index
  	@products = Product.all
  	@categories = Category.order('nombre asc')
  end

  def show
    @product = Product.find(params[:id])
  end
end
