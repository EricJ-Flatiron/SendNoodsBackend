class AuthController < ApplicationController
    skip_before_action :logged_in?

    def create
        puts(params[:email])
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            render json: {email: user.email, id: user.id, token: encode_token({user_id: user.id}), firstName: user.first_name, lastName: user.last_name}
        else
            render json: {error: "invalid email or password"}
        end
    end
end
