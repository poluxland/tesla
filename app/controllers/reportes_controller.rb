class ReportesController < ApplicationController
  before_action :set_reporte, only: %i[ show edit update destroy ]

  # GET /reportes or /reportes.json
  def index
    @reportes = Reporte.all

  end

  # GET /reportes/1 or /reportes/1.json
  def show
  end

  # GET /reportes/new
  def new
    @reporte = Reporte.new

  end

  # GET /reportes/1/edit
  def edit

  end

  # POST /reportes or /reportes.json
  def create
    @reporte = Reporte.new(reporte_params)


    respond_to do |format|
      if @reporte.save
        format.html { redirect_to reporte_url(@reporte), notice: "Reporte creado." }
        format.json { render :show, status: :created, location: @reporte }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportes/1 or /reportes/1.json
  def update

    respond_to do |format|
      if @reporte.update(reporte_params)
        format.html { redirect_to reporte_url(@reporte), notice: "Reporte actualizado." }
        format.json { render :show, status: :ok, location: @reporte }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportes/1 or /reportes/1.json
  def destroy

    @reporte.destroy

    respond_to do |format|
      format.html { redirect_to reportes_url, notice: "Reporte eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporte
      @reporte = Reporte.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reporte_params
      params.require(:reporte).permit(:cliente_id, :sucursale_id, :equipo_id, :enchufes, :cables, :conecciones, :estructura, :corrosion, :bases, :ventiladores, :condensador, :compresor, :evaporador, :linea_refrigerante, :aislacion, :correas, :lubricacion, :filtro_de_aire, :carcasa, :partida_normal, :vibraciones_y_ruido, :luces_e_indicadores, :direccion_de_ventiladores, :nivel_de_aceite, :nivel_de_refrigerante, :pruebas_de_funcionamiento, :alarmas, :sobrecalor, :sobrecalentamiento, :presion_de_succion, :presion_de_descarga, :tarjeta_de_control, :compresor_f1, :compresor_f2, :compresor_f3, :compresor_m, :ventilador_compresor_f1, :ventilador_compresor_f2, :ventilador_compresor_f3, :ventilador_compresor_m, :ventilador_evaporador_inyeccion_f1, :ventilador_evaporador_inyeccion_f2, :ventilador_evapodar_f3, :ventilador_evaporador_m, :ventilador_retorno_f1, :ventilador_retorno_f2, :ventilador_retorno_f3, :ventilador_retorno_m, :calefactor_f1, :calefactor_f2, :calefactor_f3, :calefactor_m, :cable_poder_f1, :cable_poder_f2, :cable_poder_f3, :cable_poder_m, :tension_total_f1, :tension_total_f2, :tension_total_f3, :tension_total_m, :detalle, :insumos_repuestos, :firma_solicitante, :firma_tecnico, :imagen_1, :imagen_2, :imagen_3, :coigo_qr, :otros, :fecha, :servicio, :chiller_presion_agua, :chiller_presion_agua_retorno, :chiller_t_agua_suministrada, :chiller_t_agua_retorno, :chiller_caudal_suministrado, :chiller_caudal_retorno, :a1, :a2, :a3, :a4, :b1, :b2, :b3, :incio, :termino)
    end
end
