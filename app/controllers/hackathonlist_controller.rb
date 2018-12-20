class HackathonlistController < ApplicationController
  def create
    newhacklist=Hackathonlist.create(hacklist_params)
    @user=User.find(params[:user_id])
    hacklist=@user.hackathons
    render json: {user: {user_id: @user.id,name:@user.name,username:@user.username,email:@user.email,hackathons:hacklist,img:@user.img}}

  end

  def delete
    savedhackathon=Hackathonlist.where(user_id:params[:user_id],hackathon_id:params[:hackathon_id])
    savedhackathon[0].destroy
    @user=User.find(params[:user_id])
    hacklist=@user.hackathons
    render json: {user: {user_id: @user.id,name:@user.name,username:@user.username,email:@user.email,hackathons:hacklist,img:@user.img}}

  end
  private

  def hacklist_params
    params.require(:hackathonlist).permit(:user_id,:hackathon_id)
  end
end
