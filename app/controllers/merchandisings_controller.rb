class MerchandisingsController < ApplicationController
  before_action :set_merchandising, only: [:show, :edit, :update, :destroy]

  # GET /merchandisings
  # GET /merchandisings.json
  def index
    @merchandisings = Merchandising.all
  end

  # GET /merchandisings/1
  # GET /merchandisings/1.json
  def show
  end

  # GET /merchandisings/new
  def new
    @merchandising = Merchandising.new
  end

  # GET /merchandisings/1/edit
  def edit
  end

  # POST /merchandisings
  # POST /merchandisings.json
  def create
    @merchandising = Merchandising.new(merchandising_params)

    respond_to do |format|
      if @merchandising.save
        format.html { redirect_to @merchandising, notice: 'Merchandising was successfully created.' }
        format.json { render :show, status: :created, location: @merchandising }
      else
        format.html { render :new }
        format.json { render json: @merchandising.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merchandisings/1
  # PATCH/PUT /merchandisings/1.json
  def update
    respond_to do |format|
      if @merchandising.update(merchandising_params)
        format.html { redirect_to @merchandising, notice: 'Merchandising was successfully updated.' }
        format.json { render :show, status: :ok, location: @merchandising }
      else
        format.html { render :edit }
        format.json { render json: @merchandising.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merchandisings/1
  # DELETE /merchandisings/1.json
  def destroy
    @merchandising.destroy
    respond_to do |format|
      format.html { redirect_to merchandisings_url, notice: 'Merchandising was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchandising
      @merchandising = Merchandising.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merchandising_params
      params.require(:merchandising).permit(:nombre, :tipo, :precio_costo, :precio_venta, :descripcion, :unidades, :picture, :proveedor_id)
    end
end
