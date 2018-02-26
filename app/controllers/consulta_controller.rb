class ConsultaController < ApplicationController
  before_action :set_consultum, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /consulta
  # GET /consulta.json
  def index
    @consulta = Consultum.all
  end

  # GET /consulta/1
  # GET /consulta/1.json
  def show
    respond_to do |f|
      f.js
    end
  end

  # GET /consulta/new
  def new
    @consultum = Consultum.new
    1.times{@consultum.con_procs.build}
    1.times{@consultum.con_vets.build}
    1.times{@consultum.con_ins.build}
    1.times{@consultum.orden_examen.build}
    1.times{@consultum.anexos.build}
    respond_to do |f|
      f.js
    end
  end

  # GET /consulta/1/edit
  def edit
    1.times{@consultum.con_procs.build}
    1.times{@consultum.con_vets.build}
    1.times{@consultum.con_ins.build}
    1.times{@consultum.orden_examen.build}
    1.times{@consultum.anexos.build}
    respond_to do |f|
      f.js
    end
  end

  # POST /consulta
  # POST /consulta.json
  def create
    @consultum = Consultum.new(consultum_params)

    respond_to do |format|
      if @consultum.save
        format.html { redirect_to consulta_url, notice: 'Consulta creada.' }
        format.json { render :show, status: :created, location: @consultum }
      else
        format.html { render :new }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulta/1
  # PATCH/PUT /consulta/1.json
  def update
    respond_to do |format|
      if @consultum.update(consultum_params)
        format.html { redirect_to consulta_url, notice: 'Consulta editada.' }
        format.json { render :show, status: :ok, location: @consultum }
      else
        format.html { render :edit }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta/1
  # DELETE /consulta/1.json
  def destroy
    @consultum.destroy
    respond_to do |format|
      format.html { redirect_to consulta_url, notice: 'Consulta eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultum
      @consultum = Consultum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consultum_params
      params.require(:consultum).permit(:fecha, :tipo, :perro_id, :precio, perro_attributes:[:id, :nombre, :_destroy] ,con_procs_attributes:[:id, :procedimiento, :_destroy],con_vets_attributes:[:id, :nombre, :_destroy],con_ins_attributes:[:id, :nombre, :cant_actual, :_destroy],orden_examen_attributes:[:proceso_examen,:plazo_examen,:fecha_examen,:comentario,:_destroy],anexos_attributes:[:nombre,:fecha,:comentario,:_destroy])
    end
end
