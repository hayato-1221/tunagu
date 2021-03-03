class MedicalTreatmentHistoriesController < ApplicationController
  def show
    @medical_treatment_history = MedicalTreatmentHistory.find(params[:id])
  end
end
