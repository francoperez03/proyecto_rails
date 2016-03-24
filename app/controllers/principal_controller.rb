class PrincipalController < ApplicationController
  def index
  	 @latest_products = Admin::Product.order('created_at desc').limit(4)
  end
  def por_marca
  	 @admin_products = Admin::Product.all
  end
  def por_category
  	 @admin_products = Admin::Product.all
  end
end
