class TextlinesController < ApplicationController
  before_action :set_textline, only: [:show, :edit, :update, :destroy]

  # GET /textlines
  # GET /textlines.json
  def index
    @textlines = Textline.all
  end

  # GET /textlines/1
  # GET /textlines/1.json
  def show
  end

  # GET /textlines/new
  def new
    @textline = Textline.new
  end

  # GET /textlines/1/edit
  def edit
  end

  # POST /textlines
  # POST /textlines.json
  def create
    @textline = Textline.new(textline_params)

    respond_to do |format|
      if @textline.save
        format.html { redirect_to @textline, notice: 'Textline was successfully created.' }
        format.json { render :show, status: :created, location: @textline }
      else
        format.html { render :new }
        format.json { render json: @textline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /textlines/1
  # PATCH/PUT /textlines/1.json
  def update
    respond_to do |format|
      if @textline.update(textline_params)
        format.html { redirect_to @textline, notice: 'Textline was successfully updated.' }
        format.json { render :show, status: :ok, location: @textline }
      else
        format.html { render :edit }
        format.json { render json: @textline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textlines/1
  # DELETE /textlines/1.json
  def destroy
    @textline.destroy
    respond_to do |format|
      format.html { redirect_to textlines_url, notice: 'Textline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textline
      @textline = Textline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def textline_params
      params.require(:textline).permit(:element_id, :string)
    end
end
