class NoodlesController < ApplicationController

    def create
        @noodle = Noodle.create(noodle_params)
        if @noodle.valid?
            render json: {noodle: @noodle}, status: :created
        else
            render json: { error: 'failed to create noodle'}, satus: :not_acceptable
        end
    end

    def show
        @noodle = Noodle.find(params[:noodle][:id])
        render json: @noodle
    end
end
