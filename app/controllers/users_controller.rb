class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.new(user_params)
        if user.save
            token = encode_token({user_id: user.id})
            render json: {user: user, token: token}
        else
            render json: {error: "Incorrect credentials. Please try again."}
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token({user_id: user.id})
            render json: {user: user, token: token}
        else
            render json: {error: "Incorrect Username or Password"}
        end
    end

    def get_user
        render json: {user: UserSerializer.new(current_user)}
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user
        else
            render json: {error: "Username has already been taken. Sorry can't update your profile."}
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
    end

    private

    def user_params
        params.permit(:name, :username, :password, :id, :age, :skin_type)
    end
end
