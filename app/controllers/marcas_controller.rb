class MarcasController < ApplicationController
  before_action :set_marca, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user_admin!
  


  # GET /admin/marcas
  # GET /admin/marcas.json
  def index
    @marcas = Marca.all
  end

  # GET /admin/marcas/1
  # GET /admin/marcas/1.json
  def show
  end

  # GET /admin/marcas/new
  def new
    @marca = Marca.new
  end

  # GET /admin/marcas/1/edit
  def edit
  end

  # POST /admin/marcas
  # POST /admin/marcas.json
  def create
    @marca = Marca.new(marca_params)

    respond_to do |format|
      if @marca.save
        format.html { redirect_to @marca, notice: 'La marca fue creada.' }
        format.json { render :show, status: :created, location: @marca }
      else
        format.html { render :new }
        format.json { render json: @marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/marcas/1
  # PATCH/PUT /admin/marcas/1.json
  def update
    respond_to do |format|
      if @marca.update(marca_params)
        format.html { redirect_to @marca, notice: 'La marca fue editada.' }
        format.json { render :show, status: :ok, location: @marca }
      else
        format.html { render :edit }
        format.json { render json: @marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/marcas/1
  # DELETE /admin/marcas/1.json
  def destroy
    @marca.destroy
    respond_to do |format|
      format.html { redirect_to marcas_url, notice: 'La marca fue eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca
      @marca = Marca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marca_params
      params.require(:marca).permit(:nombre)
    end
end
