class CarritosController < ApplicationController
 def index
    @admin_carritos = Carrito.all
    @admin_products = Admin::Product.all
 end

 def show
  @agregar_carrito =  Carrito.new
  @admin_products = Admin::Product.find(params[:id])
 end

 def create
    @agregar_carrito =  Carrito.new(carrito_params)
    

    respond_to do |format|
      if @agregar_carrito.save
        format.html { redirect_to root_url, notice: 'Producto agregado al carrito' }
      else
        format.html { render :root }
      end
    end

  end



def edit
    @agregar_carrito =  Carrito.new(product_id: params[:id] , user_id: current_user.id )
    

    respond_to do |format|
      if @agregar_carrito.save
        format.html { redirect_to root_url, notice: 'Producto agregado al carrito' }
      else
        format.html { render :root }
      end
    end

  end

private

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrito_params
      params.require(:carrito).permit(:user_id, :product_id)
    end
end

