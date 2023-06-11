class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(treatment_params)
    if @treatment.save
      redirect_to treatment_path(@treatment)
    else
      render 'treatment/show'
    end
  end
end
