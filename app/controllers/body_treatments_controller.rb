class BodyTreatmentsController < ApplicationController
  def index
    @body_treatments = BodyTreatment.all
  end

  def show
    @body_treatment = BodyTreatment.find(params[:id])
    @body_treatment = BodyTreatment.new
  end

  private

  def package_params
    params.require(:body_treatment).permit(:body_treatment_name, :body_treatment_description)
  end
end
