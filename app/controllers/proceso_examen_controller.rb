class ProcesoExamenController < ApplicationController
  before_action :set_proceso_examan, only: [:show, :edit, :update, :destroy]

  # GET /proceso_examen
  # GET /proceso_examen.json
  def index
    @proceso_examen = ProcesoExaman.all
  end

  # GET /proceso_examen/1
  # GET /proceso_examen/1.json
  def show
  end

  # GET /proceso_examen/new
  def new
    @proceso_examan = ProcesoExaman.new
  end

  # GET /proceso_examen/1/edit
  def edit
  end

  # POST /proceso_examen
  # POST /proceso_examen.json
  def create
    @proceso_examan = ProcesoExaman.new(proceso_examan_params)

    respond_to do |format|
      if @proceso_examan.save
        format.html { redirect_to @proceso_examan, notice: 'Proceso examan was successfully created.' }
        format.json { render :show, status: :created, location: @proceso_examan }
      else
        format.html { render :new }
        format.json { render json: @proceso_examan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proceso_examen/1
  # PATCH/PUT /proceso_examen/1.json
  def update
    respond_to do |format|
      if @proceso_examan.update(proceso_examan_params)
        format.html { redirect_to @proceso_examan, notice: 'Proceso examan was successfully updated.' }
        format.json { render :show, status: :ok, location: @proceso_examan }
      else
        format.html { render :edit }
        format.json { render json: @proceso_examan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proceso_examen/1
  # DELETE /proceso_examen/1.json
  def destroy
    @proceso_examan.destroy
    respond_to do |format|
      format.html { redirect_to proceso_examen_url, notice: 'Proceso examan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proceso_examan
      @proceso_examan = ProcesoExaman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proceso_examan_params
      params.require(:proceso_examan).permit(:proceso)
    end
end
