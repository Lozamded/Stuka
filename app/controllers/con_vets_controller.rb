class ConVetsController < ApplicationController
  before_action :set_con_vet, only: [:show, :edit, :update, :destroy]

  # GET /con_vets
  # GET /con_vets.json
  def index
    @con_vets = ConVet.all
  end

  # GET /con_vets/1
  # GET /con_vets/1.json
  def show
  end

  # GET /con_vets/new
  def new
    @con_vet = ConVet.new
  end

  # GET /con_vets/1/edit
  def edit
  end

  # POST /con_vets
  # POST /con_vets.json
  def create
    @con_vet = ConVet.new(con_vet_params)

    respond_to do |format|
      if @con_vet.save
        format.html { redirect_to @con_vet, notice: 'Con vet was successfully created.' }
        format.json { render :show, status: :created, location: @con_vet }
      else
        format.html { render :new }
        format.json { render json: @con_vet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /con_vets/1
  # PATCH/PUT /con_vets/1.json
  def update
    respond_to do |format|
      if @con_vet.update(con_vet_params)
        format.html { redirect_to @con_vet, notice: 'Con vet was successfully updated.' }
        format.json { render :show, status: :ok, location: @con_vet }
      else
        format.html { render :edit }
        format.json { render json: @con_vet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /con_vets/1
  # DELETE /con_vets/1.json
  def destroy
    @con_vet.destroy
    respond_to do |format|
      format.html { redirect_to con_vets_url, notice: 'Con vet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_con_vet
      @con_vet = ConVet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def con_vet_params
      params.require(:con_vet).permit(:nombre, :consultum_id)
    end
end
