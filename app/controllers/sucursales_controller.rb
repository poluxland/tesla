class SucursalesController < ApplicationController
  before_action :set_sucursale, only: %i[ show edit update destroy ]
  rescue_from ActiveRecord::InvalidForeignKey, with: :invalid_foreign_key


  # GET /sucursales or /sucursales.json
  def index
    respond_to do |format|
      format.html do
        @sucursales = Sucursale.order(created_at: :desc)
        authorize @sucursales
      end
      format.xlsx do
        @sucursales = Sucursale.all
        render xlsx: 'sucursales', template: 'sucursales/planilla'
      end
    end
  end

  # GET /sucursales/1 or /sucursales/1.json
  def show
     respond_to do |format|
      format.html do
        @sucursales = Sucursale.order(created_at: :desc)
      end
      format.xlsx do
        @sucursales = Sucursale.all
        render xlsx: 'sucursales', template: 'sucursales/planilla'
      end
    end
  end

  # GET /sucursales/new
  def new
    @cliente = Cliente.find(params[:cliente_id])
    @sucursale = Sucursale.new
    authorize @sucursale
  end

  # GET /sucursales/1/edit
  def edit
  end

  # Sucursale /sucursales or /sucursales.json
  def create
    @cliente = Cliente.find(params[:cliente_id])

    @sucursale = Sucursale.new(sucursale_params)
    authorize @sucursale
    @sucursale.cliente = @cliente
    if @sucursale.save
      redirect_to cliente_path(@cliente)
    else
      render :new
    end

  end

  # PATCH/PUT /sucursales/1 or /sucursales/1.json
  def update
    authorize @sucursale
    respond_to do |format|
      if @sucursale.update(sucursale_params)
        format.html { redirect_to cliente_path(@sucursale.cliente), notice: "Sucursal actualizada." }
        format.json { render :show, status: :ok, location: @sucursale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sucursale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucursales/1 or /sucursales/1.json
  def destroy
    authorize @sucursale
    @sucursale.destroy
      redirect_to cliente_path(@sucursale.cliente), notice: "Sucursal eliminada."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sucursale
      @sucursale = Sucursale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sucursale_params
      params.require(:sucursale).permit(:cliente_id, :nombre, :direccion, :contacto, :supervisor)
    end

    def invalid_foreign_key
      redirect_to cliente_path(@sucursale.cliente), notice: "Sucursal tiene equipos."
    end
end
