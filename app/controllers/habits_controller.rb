class HabitsController < ApplicationController
    def new
    end
    
    def create
        Habit.create(title: habit_params[:title], purpose: habit_params[:purpose], reason: habit_params[:reason], user_id: current_user.id)
        redirect_to controller: 'users', action: 'show', id: current_user.id
    end
    
    def edit
        @habit = Habit.find(params[:id])
    end
    
    private
    def habit_params
        params.permit(:title, :purpose, :reason)
    end
end
