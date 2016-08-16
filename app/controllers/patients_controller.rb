class PatientsController < ApplicationController
  def index
    @patients = User.find(session[:user]["id"]).patients
  end

  def show
      @patients = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    @user = User.find(session[:user]["id"])
    @patient = @user.patients.create!(patient_params)
    redirect_to @patient
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
