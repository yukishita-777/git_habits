class HabitsController < ApplicationController
    def index
        @habits = Habit.all
    end
    
    def new
        @habit = Habit.new
    end
    
    def create
        Habit.create(title: habit_params[:title], purpose: habit_params[:purpose], reason: habit_params[:reason], user_id: current_user.id)
        redirect_to controller: 'users', action: 'show', id: current_user.id
    end
    
    def edit
        @habit = Habit.find(params[:id])
    end
    
    def update
        Habit.update(habit_params)
    end
    
    def destroy
        habit = Habit.find(params[:id])
        if habit.user_id == current_user.id
            habit.destroy
            redirect_to controller: 'users', action: 'show', id: current_user.id
        end
    end
    
    private
    def habit_params
        params.require(:habit).permit(:title, :purpose, :reason)
    end
end
