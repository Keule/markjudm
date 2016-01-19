class LasejobsController < ApplicationController
  before_action :set_lasejob, only: [:show, :edit, :update, :destroy]

  # GET /lasejobs
  # GET /lasejobs.json
  def index
    @lasejobs = Lasejob.all
  end

  # GET /lasejobs/1
  # GET /lasejobs/1.json
  def show
  end

  # GET /lasejobs/new
  def new
    @lasejob = Lasejob.new
  end

  # GET /lasejobs/1/edit
  def edit
  end

  # POST /lasejobs
  # POST /lasejobs.json
  def create
    @lasejob = Lasejob.new(lasejob_params)

    respond_to do |format|
      if @lasejob.save
        format.html { redirect_to @lasejob, notice: 'Lasejob was successfully created.' }
        format.json { render :show, status: :created, location: @lasejob }
      else
        format.html { render :new }
        format.json { render json: @lasejob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lasejobs/1
  # PATCH/PUT /lasejobs/1.json
  def update
    respond_to do |format|
      if @lasejob.update(lasejob_params)
        format.html { redirect_to @lasejob, notice: 'Lasejob was successfully updated.' }
        format.json { render :show, status: :ok, location: @lasejob }
      else
        format.html { render :edit }
        format.json { render json: @lasejob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lasejobs/1
  # DELETE /lasejobs/1.json
  def destroy
    @lasejob.destroy
    respond_to do |format|
      format.html { redirect_to lasejobs_url, notice: 'Lasejob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lasejob
      @lasejob = Lasejob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lasejob_params
      params.require(:lasejob).permit(:title)
    end
end
