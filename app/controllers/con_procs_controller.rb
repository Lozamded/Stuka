class ConProcsController < ApplicationController
  before_action :set_con_proc, only: [:show, :edit, :update, :destroy]

  # GET /con_procs
  # GET /con_procs.json
  def index
    @con_procs = ConProc.all
  end

  # GET /con_procs/1
  # GET /con_procs/1.json
  def show
  end

  # GET /con_procs/new
  def new
    @con_proc = ConProc.new
  end

  # GET /con_procs/1/edit
  def edit
  end

  # POST /con_procs
  # POST /con_procs.json
  def create
    @con_proc = ConProc.new(con_proc_params)

    respond_to do |format|
      if @con_proc.save
        format.html { redirect_to @con_proc, notice: 'Con proc was successfully created.' }
        format.json { render :show, status: :created, location: @con_proc }
      else
        format.html { render :new }
        format.json { render json: @con_proc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /con_procs/1
  # PATCH/PUT /con_procs/1.json
  def update
    respond_to do |format|
      if @con_proc.update(con_proc_params)
        format.html { redirect_to @con_proc, notice: 'Con proc was successfully updated.' }
        format.json { render :show, status: :ok, location: @con_proc }
      else
        format.html { render :edit }
        format.json { render json: @con_proc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /con_procs/1
  # DELETE /con_procs/1.json
  def destroy
    @con_proc.destroy
    respond_to do |format|
      format.html { redirect_to con_procs_url, notice: 'Con proc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_con_proc
      @con_proc = ConProc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def con_proc_params
      params.require(:con_proc).permit(:procedimiento, :precio, :consultum_id)
    end
end
