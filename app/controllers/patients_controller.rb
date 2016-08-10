class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
      @patients = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to '/patients'
    else
      redirect_to '/patients/new'
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    patient = Patient.find(params[:id])
    patient.update(patient_params)

    redirect_to patient
  end

  def destroy
    patient = Patient.find(params[:id])
    patient.destroy

   redirect_to patients_path
end
  private
  def patient_params
    params.require(:patient).permit(:name, :age, :height, :weight, :email, :phone_number)
  end
end
