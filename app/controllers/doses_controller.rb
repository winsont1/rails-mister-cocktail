class DosesController < ApplicationController
  before_action :set_cocktail

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @dose = Dose.new(dose_params)
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def set_dose
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end
