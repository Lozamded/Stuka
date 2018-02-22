class SucesoPerrosController < ApplicationController
  before_action :set_suceso_perro, only: [:show, :edit, :update, :destroy]

  # GET /suceso_perros
  # GET /suceso_perros.json
  def index
    @suceso_perros = SucesoPerro.all
  end

  # GET /suceso_perros/1
  # GET /suceso_perros/1.json
  def show
  end

  # GET /suceso_perros/new
  def new
    @suceso_perro = SucesoPerro.new
  end

  # GET /suceso_perros/1/edit
  def edit
  end

  # POST /suceso_perros
  # POST /suceso_perros.json
  def create
    @suceso_perro = SucesoPerro.new(suceso_perro_params)

    respond_to do |format|
      if @suceso_perro.save
        format.html { redirect_to @suceso_perro, notice: 'Suceso perro was successfully created.' }
        format.json { render :show, status: :created, location: @suceso_perro }
      else
        format.html { render :new }
        format.json { render json: @suceso_perro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suceso_perros/1
  # PATCH/PUT /suceso_perros/1.json
  def update
    respond_to do |format|
      if @suceso_perro.update(suceso_perro_params)
        format.html { redirect_to @suceso_perro, notice: 'Suceso perro was successfully updated.' }
        format.json { render :show, status: :ok, location: @suceso_perro }
      else
        format.html { render :edit }
        format.json { render json: @suceso_perro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suceso_perros/1
  # DELETE /suceso_perros/1.json
  def destroy
    @suceso_perro.destroy
    respond_to do |format|
      format.html { redirect_to suceso_perros_url, notice: 'Suceso perro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suceso_perro
      @suceso_perro = SucesoPerro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suceso_perro_params
      params.require(:suceso_perro).permit(:suceso, :involucrado, :fecha, :perro_id, :socio_id, :propietario_id)
    end
end
