class ProblemsController < ApplicationController
  def index
    @problems = Problem.includes(:user)
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

  def show
    @problem = Problem.find(params[:id])
  end

  private

  def problem_params
    params.require(:problem).permit(:title, :statement, :answer, :grade_id).merge(user_id: current_user.id)
  end

end
