class UsersController < ApplicationController
    def show
        @user = User.find(current_user.id)
        @habits = @user.habits
    end
    
    def edit
        @user = User.find(current_user.id)
    end
end
