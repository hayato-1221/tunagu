class VisitHistoriesController < ApplicationController
  before_action :set_visit_history, only: [:show, :edit, :update, :destroy]

  # GET /visit_historys
  # GET /visit_historys.json
  def index
    @visit_historys = VisitHistory.all
  end

  # GET /visit_historys/1
  # GET /visit_historys/1.json
  def show
  end

  # GET /visit_historys/new
  def new
    @visit_history = VisitHistory.new(visit_history_params)
    @visit_history.build_medical_treatment_history
  end

  # GET /visit_historys/1/edit
  def edit
  end

  # POST /visit_historys
  # POST /visit_historys.json
  def create
    @visit_history = current_user.visit_histories.new(visit_history_params)

    if @visit_history.save
      redirect_to @visit_history, notice: "VisitHistory was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /visit_historys/1
  # PATCH/PUT /visit_historys/1.json
  def update
    if @visit_history.update(visit_history_params)
      redirect_to @visit_history, notice: "VisitHistory was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /visit_historys/1
  # DELETE /visit_historys/1.json
  def destroy
    @visit_history.destroy
    redirect_to visit_historys_url, notice: "VisitHistory was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_visit_history
    @visit_history = VisitHistory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def visit_history_params
    params.require(:visit_history).permit(:visit_date, :client_id, medical_treatment_history_attributes: [:user_id, :subjective])
  end
end
