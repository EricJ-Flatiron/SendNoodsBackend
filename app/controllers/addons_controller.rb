class AddonsController < ApplicationController
    def show
        @addon = Addon.find(params[:addon][:id])
        render json: @addon
    end

    def create
        @addon = Addon.create(addon_params)
        if @addon.valid?
            render json: {addon: @addon}, status: :created
        else
            render json: { error: 'failed to create addon'}, satus: :not_acceptable
        end
    end
end
