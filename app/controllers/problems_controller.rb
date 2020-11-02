class ProblemsController < ApplicationController
  def index
    @problem = Problem.includes(:user)
  end

  def new
    @problem = Problem.new
  end

  def create
    # binding.pry
    @problem = Problem.new(problem_params)
    if @problem.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def problem_params
    params.require(:problem).permit(:title, :statement, :answer, :grade_id)
  end

end
