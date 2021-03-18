class MedicalTreatmentHistoriesController < ApplicationController
  def show
    @client = current_user.clients.find(params[:id])
    @medical_treatment_history = MedicalTreatmentHistory.find(params[:id])
    
  end
end
