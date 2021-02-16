class UsersController < ApplicationController

    skip_before_action :authorized, only: [:login, :handle_login, :new, :create]

    def handle_login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:errors] = ["Incorrect username or password"]
            redirect_to login_path
        end
    end

    def logout
        logout_user
        redirect_to login_path
    end

    def index
        @users = User.all
    end

    def show
    end

    def new
        if flash[:attributes]
            @user = User.new(flash[:attributes])
        else
            @user = User.new
        end
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            flash[:attributes] = @user.attributes
            redirect_to new_user_path
        end
    end

    def edit
        if flash[:attributes]
            @user = current_user(flash[:attributes])
        else
            @user = current_user
        end
    end

    def update
        @user = current_user.update(user_params)

        if @user.valid?
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            flash[:attributes] = @user.attributes
            redirect_to edit_user_path(@user)
        end
    end

    def destroy
        current_user.destroy
        redirect_to login_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :email)
    end
end
