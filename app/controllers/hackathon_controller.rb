class HackathonController < ApplicationController
  def find
    @hackathons=Hackathon.where(state:params[:state],free:params[:free],date:params[:fromDate]..params[:toDate])
    render json: @hackathons
  end

  private
  def hackathon_params
    params.require(:hackathon).permit(:state,:free,:date)
  end

  def filter_params
    params.require(:hackathon).permit(:state,:free,:fromDate,:toDate)
end
