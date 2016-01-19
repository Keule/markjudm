class ControlcommandsController < ApplicationController
  before_action :set_controlcommand, only: [:show, :edit, :update, :destroy]

  # GET /controlcommands
  # GET /controlcommands.json
  def index
    @controlcommands = Controlcommand.all
  end

  # GET /controlcommands/1
  # GET /controlcommands/1.json
  def show
  end

  # GET /controlcommands/new
  def new
    @controlcommand = Controlcommand.new
  end

  # GET /controlcommands/1/edit
  def edit
  end

  # POST /controlcommands
  # POST /controlcommands.json
  def create
    @controlcommand = Controlcommand.new(controlcommand_params)

    respond_to do |format|
      if @controlcommand.save
        format.html { redirect_to @controlcommand, notice: 'Controlcommand was successfully created.' }
        format.json { render :show, status: :created, location: @controlcommand }
      else
        format.html { render :new }
        format.json { render json: @controlcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controlcommands/1
  # PATCH/PUT /controlcommands/1.json
  def update
    respond_to do |format|
      if @controlcommand.update(controlcommand_params)
        format.html { redirect_to @controlcommand, notice: 'Controlcommand was successfully updated.' }
        format.json { render :show, status: :ok, location: @controlcommand }
      else
        format.html { render :edit }
        format.json { render json: @controlcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controlcommands/1
  # DELETE /controlcommands/1.json
  def destroy
    @controlcommand.destroy
    respond_to do |format|
      format.html { redirect_to controlcommands_url, notice: 'Controlcommand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_controlcommand
      @controlcommand = Controlcommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def controlcommand_params
      params.require(:controlcommand).permit(:element_id, :path)
    end
end
