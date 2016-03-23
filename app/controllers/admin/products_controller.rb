class Admin::ProductsController < ApplicationController
  before_action :set_admin_product, only: [:show, :edit, :update, :destroy]
  before_action :set_marcas_products, only: [:new, :create, :edit, :update]

  # GET /admin/products
  # GET /admin/products.json
  def index
    @admin_products = Admin::Product.all
  end

  # GET /admin/products/1
  # GET /admin/products/1.json
  def show
  end

  # GET /admin/products/new
  def new
    @admin_product = Admin::Product.new
  end

  # GET /admin/products/1/edit
  def edit
  end

  # POST /admin/products
  # POST /admin/products.json
  def create
    @admin_product = Admin::Product.new(admin_product_params)

    respond_to do |format|
      if @admin_product.save
        format.html { redirect_to @admin_product, notice: 'El producto fue creado.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /admin/products/1
  # PATCH/PUT /admin/products/1.json
  def update
    respond_to do |format|
      if @admin_product.update(admin_product_params)
        format.html { redirect_to @admin_product, notice: 'El producto fue editado.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /admin/products/1
  # DELETE /admin/products/1.json
  def destroy
    @admin_product.destroy
    respond_to do |format|
    format.html { redirect_to admin_products_url, notice: 'El producto fue borrado.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_product
      @admin_product = Admin::Product.find(params[:id])
    end

    def set_marcas_products
      @marcas= Admin::Marca.order(:nombre).all
      @categories= Admin::Category.order(:nombre).all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_product_params
      params.require(:admin_product).permit(:codigo, :precio, :description,:marca_id,:category_id,:image)
    end
end
