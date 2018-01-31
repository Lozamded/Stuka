class PropietariosController < ApplicationController
  before_action :set_propietario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /propietarios
  # GET /propietarios.json
  def index
    @propietarios = Propietario.all
  end

  # GET /propietarios/1
  # GET /propietarios/1.json
  def show
    respond_to do |f|
      f.js
    end
  end

  # GET /propietarios/new
  def new
    @propietario = Propietario.new
    respond_to do |f|
      f.js
    end
  end

  # GET /propietarios/1/edit
  def edit
        respond_to do |f|
      f.js
    end
  end

  # POST /propietarios
  # POST /propietarios.json
  def create
    @propietario = Propietario.new(propietario_params)

    respond_to do |format|
      if @propietario.save
        format.html { redirect_to propietarios_url, notice: 'Propietario was successfully created.' }
        format.json { render :show, status: :created, location: @propietario }
      else
        format.html { render :new }
        format.json { render json: @propietario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propietarios/1
  # PATCH/PUT /propietarios/1.json
  def update
    respond_to do |format|
      if @propietario.update(propietario_params)
        format.html { redirect_to propietarios_url, notice: 'Propietario was successfully updated.' }
        format.json { render :show, status: :ok, location: @propietario }
      else
        format.html { render :edit }
        format.json { render json: @propietario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propietarios/1
  # DELETE /propietarios/1.json
  def destroy
    @propietario.destroy
    respond_to do |format|
      format.html { redirect_to propietarios_url, notice: 'Propietario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propietario
      @propietario = Propietario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propietario_params
      params.require(:propietario).permit(:nombre, :rut, :fecha_nacimiento, :email, :telefono, :direccion, :comuna)
    end
end
