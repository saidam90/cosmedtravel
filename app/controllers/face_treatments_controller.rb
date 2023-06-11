class FaceTreatmentsController < ApplicationController
  def index
    @face_treatments = FaceTreatments.all
  end

  def show
    @face_treatment = FaceTreatment.find(params[:id])
    @face_treatment = FaceTreatment.new
  end

  private

  def package_params
    params.require(:face_treatment).permit(:face_treatment_name, :face_treatment_description)
  end
end
