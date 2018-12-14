class HackathonsController < ApplicationController
  def find

    case
      # free empty
      when params[:free]=="either" && params[:location]!="" && params[:fromDate]!= ""
        @hackathons=Hackathon.where(state:params[:location],date:params[:fromDate]..params[:toDate])
        # free and state empty
      when params[:free]=="either" && params[:location]=="" && params[:fromDate]!=""
        @hackathons=Hackathon.where(date:params[:fromDate]..params[:toDate])
        # all empty
      when params[:free]=="either" && params[:location]=="" && params[:fromDate]==""
        @hackathons=Hackathon.all
        # date empty
      when params[:free]!="either" && params[:location]!="" && params[:fromDate]==""
        @hackathons=Hackathon.where(free:params[:free],state:params[:location])
        # date and state empty
      when params[:free]!="either" && params[:location]=="" && params[:fromDate]==""
        @hackathons=Hackathon.where(free:params[:free])
        # state empty
      when params[:free]=="either" && params[:location]!="" && params[:fromDate]==""
        @hackathons=Hackathon.where(state:params[:location])
        # free and date empty
      when params[:free]!="either" && params[:location]=="" && params[:fromDate]!=""
        @hackathons=Hackathon.where(free:[params[:free],date:params[:fromDate]..params[:toDate]])
        # none empty
      when params[:free]!="either" && params[:location]!="" && params[:fromDate]!=""
        @hackathons=Hackathon.where(free:params[:free],date:params[:fromDate]..params[:toDate],state:params[:location])

    end
    render json: @hackathons
  end

def show

  has=Hackathon.joins(:hackathonlists).group("hackathons.id")
  sortedhas=has.sort_by {|obj| obj.date}
  render json: sortedhas
end

  private
  def hackathon_params
    params.require(:hackathon).permit(:state,:free,:date)
  end

  def filter_params
    params.require(:hackathon).permit(:state,:free,:fromDate,:toDate)
end

end
