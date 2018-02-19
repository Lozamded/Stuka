class ConInsController < ApplicationController
  before_action :set_con_in, only: [:show, :edit, :update, :destroy]

  # GET /con_ins
  # GET /con_ins.json
  def index
    @con_ins = ConIn.all
  end

  # GET /con_ins/1
  # GET /con_ins/1.json
  def show
  end

  # GET /con_ins/new
  def new
    @con_in = ConIn.new
  end

  # GET /con_ins/1/edit
  def edit
  end

  # POST /con_ins
  # POST /con_ins.json
  def create
    @con_in = ConIn.new(con_in_params)

    respond_to do |format|
      if @con_in.save
        format.html { redirect_to @con_in, notice: 'Con in was successfully created.' }
        format.json { render :show, status: :created, location: @con_in }
      else
        format.html { render :new }
        format.json { render json: @con_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /con_ins/1
  # PATCH/PUT /con_ins/1.json
  def update
    respond_to do |format|
      if @con_in.update(con_in_params)
        format.html { redirect_to @con_in, notice: 'Con in was successfully updated.' }
        format.json { render :show, status: :ok, location: @con_in }
      else
        format.html { render :edit }
        format.json { render json: @con_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /con_ins/1
  # DELETE /con_ins/1.json
  def destroy
    @con_in.destroy
    respond_to do |format|
      format.html { redirect_to con_ins_url, notice: 'Con in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_con_in
      @con_in = ConIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def con_in_params
      params.require(:con_in).permit(:nombre, :consultum_id)
    end
end
