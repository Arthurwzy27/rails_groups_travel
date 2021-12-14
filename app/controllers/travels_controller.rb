class TravelsController < ApplicationController
  def index
    @travels = Travel.all
    @teams = Team.all
  end

  def show
    @travel = Travel.find(params[:id])
    @team = Team.find(params[:id])
  end
end
