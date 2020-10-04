class UsersController < ApplicationController
    def show
        @user = User.find(current_user.id)
        @habit = Habit.find(current_user.id)
    end
end
