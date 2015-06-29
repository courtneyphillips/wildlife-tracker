class SpeciesController < ApplicationController
  def show
    @species = Species.find(params[:id])
    render :show
  end

  def new
    @type = Type.find(params[:type_id])
    @species = @type.species.new
    render :new
  end

  def create
    @type = Type.find(params[:type_id])
    @species = @type.species.new(species_params)
    if @species.save
      redirect_to type_path(@species.type)
    else
      render :new
    end
  end

  private

  def species_params
    params.require(:species).permit(:name, :description)
  end


end
