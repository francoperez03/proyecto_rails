class PrincipalController < ApplicationController
  def index
  	 @latest_products = Admin::Product.order('created_at desc').limit(4)
  end
end
