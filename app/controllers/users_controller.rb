class UsersController < ApplicationController

    skip_before_action :authorized, only: [:login, :handle_login, :new, :create]
    skip_before_action :verify_authenticity_token, only: [:login, :handle_login]
    def login
    end

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
        if session[:user_id] == nil
            redirect_to login_path
        else
            user_path(current_user)
        end
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
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            flash[:attributes] = @user.attributes
            redirect_to new_user_path
        end
    end

    def edit
        @user = current_user
    end

    def edit_password
        @user = current_user
    end

    def update_password
        if @current_user && @current_user.authenticate(params[:current_password]) && params[:password].length > 7
            if @current_user.password_match?(params[:password], params[:password_confirmation])
                @current_user.update(password: params[:password])
                redirect_to user_path(@current_user)
            else
                flash[:errors] = ["Your new password must match"]
                redirect_to edit_password_path
            end
        else
            flash[:errors] = ["Your current password was entered incorrectly"]
            redirect_to edit_password_path
        end
    end


    def update
        @current_user.update(name: params[:name], email: params[:email], username: params[:username])
        if @current_user.valid?
            redirect_to user_path(@current_user)
        else
            flash[:errors] = @current_user.errors.full_messages
            flash[:attributes] = @current_user.attributes
            redirect_to edit_user_path(@current_user)
        end
    end

    def destroy
        current_user.destroy
        redirect_to login_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :email, :password_confirmation)
    end
end
