class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @habits = @user.habits.order('created_at DESC').page(params[:page]).per(5)
    end
    
    def edit
        @user = User.find(current_user.id)
    end
    
    def update
        @user = User.find(current_user.id)
        User.update(user_params) if @user.id == current_user.id
        redirect_to action: :show
    end
    
    private
    def user_params
        params.require(:user).permit(:nickname)
    end
end
