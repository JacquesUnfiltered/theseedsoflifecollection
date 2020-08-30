class PlantGuidesController < ApplicationController
  before_action :set_plant_guide, only: [:show, :edit, :update, :destroy]

  # GET /plant_guides
  # GET /plant_guides.json
  def index
    @plant_guides = PlantGuide.all
  end

  # GET /plant_guides/1
  # GET /plant_guides/1.json
  def show
  end

  # GET /plant_guides/new
  def new
    @plant_guide = PlantGuide.new
  end

  # GET /plant_guides/1/edit
  def edit
  end

  # POST /plant_guides
  # POST /plant_guides.json
  def create
    @plant_guide = PlantGuide.new(plant_guide_params)

    respond_to do |format|
      if @plant_guide.save
        format.html { redirect_to @plant_guide, notice: 'Plant guide was successfully created.' }
        format.json { render :show, status: :created, location: @plant_guide }
      else
        format.html { render :new }
        format.json { render json: @plant_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_guides/1
  # PATCH/PUT /plant_guides/1.json
  def update
    respond_to do |format|
      if @plant_guide.update(plant_guide_params)
        format.html { redirect_to @plant_guide, notice: 'Plant guide was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_guide }
      else
        format.html { render :edit }
        format.json { render json: @plant_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_guides/1
  # DELETE /plant_guides/1.json
  def destroy
    @plant_guide.destroy
    respond_to do |format|
      format.html { redirect_to plant_guides_url, notice: 'Plant guide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_guide
      @plant_guide = PlantGuide.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_guide_params
      params.require(:plant_guide).permit(:name, :science_title, :image, :season, :sun, :water, :depth, :distance, :ph, :tips, :benefits)
    end
end
