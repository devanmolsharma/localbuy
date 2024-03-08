class UsersController < ApplicationController
    def index
        if(session[:user_id].nil?)
            redirect_to('/login')
        end
    end

    def login

    end

    def register

    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          @user.save
          redirect_to :login
        else  
          redirect :register
        end
    end
    
    def authenticate
        usr = User.where(email:params[:email]).first
        if((!usr.nil?) && usr.authenticate(params[:password]))
            session[:user_id] = usr.id;
            redirect_to :index
        end
        redirect_to :login
    end

    def user_params
        params.require(:user).permit(:email,:full_name,:phone_number, :password, :password_confirmation)
      end
end
