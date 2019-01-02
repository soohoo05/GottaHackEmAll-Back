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
def create
UserMailer.hackathon_email(hackathon_params).deliver_now
end
def show

  has=Hackathon.joins(:hackathonlists).group("hackathons.id")
  sortedhas=has.sort_by {|obj| obj.date}
  render json: sortedhas
end


def recent
  if params[:location]=="---" || params[:location]=="undefined"
@hackathon=Hackathon.all
sortedhas=@hackathon.sort_by {|obj| obj.date}
recent=sortedhas[0...10]
render json: recent
else
@hackathon=Hackathon.where(state:params[:location])
sortedhas=@hackathon.sort_by {|obj| obj.date}
recent=sortedhas[0...10]
render json: recent
end
end

def deletePast
  Hackathon.where(date:"2018-01-02 10:00:00 -0500"..Time.now).destroy_all

end

  private
  def hackathon_params
    params.require(:hackathon).permit(:state,:free,:date,:img,:host,:description,:url)
  end

  def filter_params
    params.require(:hackathon).permit(:state,:free,:fromDate,:toDate)
end



end
