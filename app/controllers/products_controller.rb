class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_marcas_products, only: [:new, :create, :edit, :update]
  before_action :authenticate_user_admin!

  # GET /admin/products
  # GET /admin/products.json
  def index
    @products = Product.all
  end
  # GET /admin/products/1
  # GET /admin/products/1.json
  def show
  end

  # GET /admin/products/new
  def new
    @product = Product.new
  end

  # GET /admin/products/1/edit
  def edit
  end

  # POST /admin/products
  # POST /admin/products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'El producto fue creado.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /admin/products/1
  # PATCH/PUT /admin/products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'El producto fue editado.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /admin/products/1
  # DELETE /admin/products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
    format.html { redirect_to products_url, notice: 'El producto fue borrado.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_marcas_products
      @marcas= Marca.order(:nombre).all
      @categories= Category.order(:nombre).all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:codigo, :precio, :description,:marca_id,:category_id,:image)
    end
end
