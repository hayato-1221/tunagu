class EarningsController < ApplicationController
  def index
    @earnings = VisitHistory.group("YEAR(visit_date)").group("MONTH(visit_date)").sum(:fee)
  end
end
