class TransfersController < ApplicationController
  before_action :set_schools
  before_action :set_students
  before_action :set_cohorts
  before_action :set_transfer, only: %i[ show ]

  def index
    @transfers = Transfer.all
  end

  def show;end

  def new
    @transfer = Transfer.new
  end

  def create
  end

  private

  def transfer_params
    params.require(:transfer).permit(:student_id, :school_id, :cohort_id, :start_date, :end_date)
  end
  
  def set_transfer
    @transfer = Transfer.find(params[:id])
  end

  def set_schools
    @schools = School.all
  end

  def set_students
    @students = Student.all
  end

  def set_cohorts
    @cohorts = Cohort.all
  end
end
