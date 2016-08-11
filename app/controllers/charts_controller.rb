class ChartsController < ApplicationController
  def show
    @chart = Chart.find(params[:chart_id])
    @patients = Patient.find(params[:id])
  end

  def new
    @patients = Patient.find(params[:patient_id])
    @charts = Chart.new
  end

  def create
      patient= Patient.find(params[:chart][:patient_id])
      Chart.create(chart_params)

      redirect_to patient
    end
  def edit
      @charts = Chart.find(params[:chart_id])
      @patients = Patient.find(params[:id])
  end
  def update
    chart = Chart.find(params[:id])
    chart.update(chart_params)
    patient = Patient.find(params[:chart][:patient_id])
    redirect_to patient
  end
  private
  def chart_params
      params.require(:chart).permit(:date, :pre_breath, :pre_swelling, :accident_since_last_treatment, :change_mobility, :pre_digestion_problems, :access_in_place, :blood_flow_rate, :post_breath, :post_swelling, :post_digestion_problems, :bruising, :total_time, :missed_treatment, :patient_id)
  end

end
