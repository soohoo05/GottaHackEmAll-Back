class UsersController < ApplicationController

  def create
    @user = User.create(user_params)

    if @user.valid?
      token = JWT.encode({user_id: @user.id}, 'SECRET')
      render json: {user:{name:@user.name,username:@user.username,email:@user.email}, jwt: token}
    else
      render json: {error: "WRONG"}, status: 422
    end
  end


private
  def user_params
    params.require(:user).permit(:username, :password ,:name, :email)
  end
end
