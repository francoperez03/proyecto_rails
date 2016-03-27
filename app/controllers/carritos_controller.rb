class CarritosController < ApplicationController
 def index
    @carrito = Carrito.all
    @products = Product.all
 end
#------------Manera alternativa--------------------
 def show
  @agregar_carrito =  Carrito.new
  @products = Product.find(params[:id])
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
#--------------------------------------------

#------------Mejor manera--------------------
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

  def destroy
    @carrito = Carrito.find(params[:id])
    @carrito.destroy
    respond_to do |format|
    format.html { redirect_to carritos_url, notice: 'El producto fue eliminado del carrito.' }
    end
  end

private

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrito_params
      params.require(:carrito).permit(:user_id, :product_id)
    end
end

