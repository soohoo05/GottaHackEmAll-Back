class AuthController < ApplicationController

  def create

    user = User.find_by(username: login_user_params[:username])
    if user && user.authenticate(login_user_params[:password])
      hacklist=user.hackathons
      token = JWT.encode({user_id: user.id}, 'SECRET')
      render json: {user: {user_id: user.id,name:user.name,username:user.username,email:user.email,hackathons:hacklist}, jwt: token}
    else
      render json: {error: ""}, status: 400
    end
  end

  def show
    string = request.authorization
    token = JWT.decode(string, 'SECRET')[0]
    id = token["user_id"].to_i
    @user = User.find(id)
    if @user
      hacklist=@user.hackathons
      render json: {user: {user_id: @user.id,name:@user.name,username:@user.username,email:@user.email,hackathons:hacklist}}
    else
      render json: {error: "some error"}, status: 422
    end
  end

private

 def login_user_params
   params.require(:user).permit(:username, :password)
 end


end
