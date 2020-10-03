class HabitsController < ApplicationController
    def new
    end
    
    def create
        Habit.create(habit_params)
    end
    
    private
    def habit_params
        params.permit(:title, :purpose, :reason)
    end
end
