class PiratesController < ApplicationController
  before_action :set_pirate, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @pirates = Pirate.search(params[:search])
    else
      @pirates = Pirate.all
    end
  end

  
  def show
  end

  
  def new
    @pirate = Pirate.new
  end

 
  def edit
  end

  
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

 
  def destroy
    @pirate.destroy
    respond_to do |format|
      format.html { redirect_to pirates_url, notice: 'Pirate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pirate
      @pirate = Pirate.find(params[:id])
    end

    def pirate_params
      params.require(:pirate).permit(:name, :ship, :description)
    end
end
