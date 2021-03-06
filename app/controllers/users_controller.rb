class UsersController < ApplicationController

    skip_before_action :logged_in?, only: [:create, :show]


    # Do I even need to use #show? I could grab all the info from localStorage
    # is this a safety risk?
    
    def show
        @user = User.find(params[:user][:id])
        render json: @user, include: [:addresses, :orders] #show addresses and orders?
    end

    # update and show params structure
    
    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            render json: { user: @user }, status: :created
        else
            render json: { error: 'failed to create user'}, status: :not_acceptable
        end
    end
    
    def update
         @user = User.find(params[:user][:id])
         if @user.update(user_params)
            render json: @user
        else 
            render json: { error: 'failed to update user'}, status: :not_acceptable
         end
     end
    
    private

    def user_params
        params.require(:user).permit(:email, :password, :first_name, :last_name)
    end

end
