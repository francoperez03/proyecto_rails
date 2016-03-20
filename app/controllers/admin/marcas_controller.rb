class Admin::MarcasController < ApplicationController
  before_action :set_admin_marca, only: [:show, :edit, :update, :destroy]


  # GET /admin/marcas
  # GET /admin/marcas.json
  def index
    @admin_marcas = Admin::Marca.all
  end

  # GET /admin/marcas/1
  # GET /admin/marcas/1.json
  def show
  end

  # GET /admin/marcas/new
  def new
    @admin_marca = Admin::Marca.new
  end

  # GET /admin/marcas/1/edit
  def edit
  end

  # POST /admin/marcas
  # POST /admin/marcas.json
  def create
    @admin_marca = Admin::Marca.new(admin_marca_params)

    respond_to do |format|
      if @admin_marca.save
        format.html { redirect_to @admin_marca, notice: 'Marca was successfully created.' }
        format.json { render :show, status: :created, location: @admin_marca }
      else
        format.html { render :new }
        format.json { render json: @admin_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/marcas/1
  # PATCH/PUT /admin/marcas/1.json
  def update
    respond_to do |format|
      if @admin_marca.update(admin_marca_params)
        format.html { redirect_to @admin_marca, notice: 'Marca was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_marca }
      else
        format.html { render :edit }
        format.json { render json: @admin_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/marcas/1
  # DELETE /admin/marcas/1.json
  def destroy
    @admin_marca.destroy
    respond_to do |format|
      format.html { redirect_to admin_marcas_url, notice: 'Marca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_marca
      @admin_marca = Admin::Marca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_marca_params
      params.require(:admin_marca).permit(:nombre)
    end
end
