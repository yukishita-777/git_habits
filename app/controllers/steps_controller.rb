class StepsController < ApplicationController
    def new
        @habit = Habit.find(params[:habit_id])
        @step = Step.new
    end
    
    def show
        @habits = Habit.where(id: params[:habit_id]).first
        @steps = @habits.steps.order(created_at: "DESC")
    end
    
    def edit
        @habit = Habit.find(params[:habit_id])
        @step = Step.find(params[:id])
    end
    
    def create
        Step.create!(step_params)
        redirect_to controller: :users, action: :show, id: current_user.id
    end
    
    private
    def step_params
        params.require(:step).permit(:action, :schedule).merge(habit_id: params[:habit_id], user_id: current_user.id)
    end
end
