class PiratesController < ApplicationController
  before_action :set_pirate, only: [:show, :edit, :update, :destroy]

  # GET /pirates
  # GET /pirates.json
  def index
    @pirates = Pirate.all
  end

  # GET /pirates/1
  # GET /pirates/1.json
  def show
  end

  # GET /pirates/new
  def new
    @pirate = Pirate.new
  end

  # GET /pirates/1/edit
  def edit
  end

  # POST /pirates
  # POST /pirates.json
  def create
    @pirate = Pirate.new(pirate_params)

    respond_to do |format|
      if @pirate.save
        format.html { redirect_to @pirate, notice: 'Pirate was successfully created.' }
        format.json { render :show, status: :created, location: @pirate }
      else
        format.html { render :new }
        format.json { render json: @pirate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pirates/1
  # PATCH/PUT /pirates/1.json
  def update
    respond_to do |format|
      if @pirate.update(pirate_params)
        format.html { redirect_to @pirate, notice: 'Pirate was successfully updated.' }
        format.json { render :show, status: :ok, location: @pirate }
      else
        format.html { render :edit }
        format.json { render json: @pirate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pirates/1
  # DELETE /pirates/1.json
  def destroy
    @pirate.destroy
    respond_to do |format|
      format.html { redirect_to pirates_url, notice: 'Pirate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pirate
      @pirate = Pirate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pirate_params
      params.require(:pirate).permit(:name, :ship, :description)
    end
end
