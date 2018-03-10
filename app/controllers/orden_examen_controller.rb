class OrdenExamenController < ApplicationController
  before_action :set_orden_examan, only: [:show, :edit, :update, :destroy]

  # GET /orden_examen
  # GET /orden_examen.json
  def index
    @orden_examen = OrdenExaman.all
  end

  # GET /orden_examen/1
  # GET /orden_examen/1.json
  def show
  end

  # GET /orden_examen/new
  def new
    @orden_examan = OrdenExaman.new
  end

  # GET /orden_examen/1/edit
  def edit
  end

  # POST /orden_examen
  # POST /orden_examen.json
  def create
    @orden_examan = OrdenExaman.new(orden_examan_params)

    respond_to do |format|
      if @orden_examan.save
        format.html { redirect_to @orden_examan, notice: 'Orden examan was successfully created.' }
        format.json { render :show, status: :created, location: @orden_examan }
      else
        format.html { render :new }
        format.json { render json: @orden_examan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orden_examen/1
  # PATCH/PUT /orden_examen/1.json
  def update
    respond_to do |format|
      if @orden_examan.update(orden_examan_params)
        format.html { redirect_to @orden_examan, notice: 'Orden examan was successfully updated.' }
        format.json { render :show, status: :ok, location: @orden_examan }
      else
        format.html { render :edit }
        format.json { render json: @orden_examan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_examen/1
  # DELETE /orden_examen/1.json
  def destroy
    @orden_examan.destroy
    respond_to do |format|
      format.html { redirect_to orden_examen_url, notice: 'Orden examan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden_examan
      @orden_examan = OrdenExaman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orden_examan_params
      params.require(:orden_examan).permit(:proceso_examen, :plazo_examen, :fecha_examen, :comentario,:consultum_id)
    end
end
