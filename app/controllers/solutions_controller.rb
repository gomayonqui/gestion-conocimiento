class SolutionsController < ApplicationController
  def index
    @program = Program.find params[:program_id]
    @solution = @program.solutions.find_by(kind: Solution.kinds[params[:program_type]])
  end
end
