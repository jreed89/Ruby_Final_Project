class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
      @doctors = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to '/doctors'
    else
      redirect_to '/doctors/new'
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    doctor = Doctor.find(params[:id])
    doctor.update(doctor_params)

    redirect_to doctor
  end

  def destroy
    doctor = Doctor.find(params[:id])
    doctor.destroy

   redirect_to doctors_path
end
  private
  def doctor_params
    params.require(:doctor).permit(:name, :phone_number, :email, :specialty )
  end

end
