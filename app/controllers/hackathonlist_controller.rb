class HackathonlistController < ApplicationController
  def create
    hacklist=Hackathonlist.create(hacklist_params)
  end

  private

  def hacklist_params
    params.require(:hackathonlist).permit(:user_id,:hackathon_id)
  end
end
