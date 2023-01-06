class EquiposController < ApplicationController
  before_action :set_equipo, only: %i[ show edit update destroy ]

  # GET /equipos or /equipos.json
  def index
    @equipos = Equipo.all
    authorize @equipos
  end

  # GET /equipos/1 or /equipos/1.json
  def show
  end

  # GET /equipos/new
  def new
    @equipo = Equipo.new
    authorize @equipo

  end

  # GET /equipos/1/edit
  def edit
  end

  # POST /equipos or /equipos.json
  def create
    @equipo = Equipo.new(equipo_params)
    authorize @equipo


    respond_to do |format|
      if @equipo.save
        format.html { redirect_to equipo_url(@equipo), notice: "Equipo creado." }
        format.json { render :show, status: :created, location: @equipo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipos/1 or /equipos/1.json
  def update
    authorize @equipo
    respond_to do |format|
      if @equipo.update(equipo_params)
        format.html { redirect_to equipo_url(@equipo), notice: "Equipo modificado." }
        format.json { render :show, status: :ok, location: @equipo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipos/1 or /equipos/1.json
  def destroy
    authorize @equipo
    @equipo.destroy

    respond_to do |format|
      format.html { redirect_to equipos_url, notice: "Equipo eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipo
      @equipo = Equipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equipo_params
      params.require(:equipo).permit(:sucursale_id, :unidad, :tipo, :contacto, :otros, :codigo, :observaciones)
    end
end
