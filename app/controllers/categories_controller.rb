class CategoriesController < ApplicationController
  def index
  	@admin_products = Admin::Product.all
  end

  def show
    @admin_product = Admin::Product.find(params[:id])
  end
end
