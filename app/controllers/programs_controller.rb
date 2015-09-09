class ProgramsController < ApplicationController
  def index
    if params[:country_id]
      @programs = Program.where country_id: params[:country_id]
    else
      @programs = Program.all
    end
  end
end
