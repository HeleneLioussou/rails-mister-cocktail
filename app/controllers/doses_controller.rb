class DosesController < ApplicationController
    def show
    @dose = Dose.find(params[:id])
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save

    redirect_to cocktail_path(@cocktail)
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(dose_params)
    redirect_to cocktail_path(@dose.cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])

    cocktail = @dose.cocktail
    @dose.destroy

    redirect_to cocktail_path(cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:id, :description, :ingredient_id)
  end
end
