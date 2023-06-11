class HairTreatmentsController < ApplicationController
  def index
    @hair_treatments = HairTreatments.all
  end

  def show
    @hair_treatment = HairTreatment.find(params[:id])
    @hair_treatment = HairTreatment.new
  end

  private

  def package_params
    params.require(:hair_treatment).permit(:hair_treatment_name, :hair_treatment_description)
  end
end
