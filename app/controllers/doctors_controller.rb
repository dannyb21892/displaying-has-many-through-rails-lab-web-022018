class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = create(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
