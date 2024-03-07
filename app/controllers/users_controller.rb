class UsersController < ApplicationController
    def index
        if(session[:user_id].nil?)
            redirect_to('/login')
        end
    end

    def login

    end
end
