class AuthController < ApplicationController

  def create
    byebug
    user = User.find_by(username: login_user_params[:username])
    if user && user.authenticate(login_user_params[:password])
      token = JWT.encode({user_id: user.id}, 'SECRET')
      render json: {user: user, jwt: token}
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
      render json: {user_id: @user.id, username: @user.username}
    else
      render json: {error: "some error"}, status: 422
    end
  end

private

 def login_user_params
   params.require(:user).permit(:username, :password)
 end


end
