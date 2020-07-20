class AddressesController < ApplicationController

    def show
        @address = Address.find(params[:address][:id])
        render json: @address
    end

    def create
        @address = address.create(address_params)
        if @address.valid?
            render json: {address: @address}, status: :created
        else
            render json: { error: 'failed to create address'}, satus: :not_acceptable
        end
    end
  
    def update
      @address = address.find(params[:address][:id])
      if @address.update(address_params)
          render json: @address
      else 
          render json: { error: 'failed to update address'}, status: :not_acceptable
      end
    end
  
    def destroy
      @address = address.find_by_id(params[:address][:id])
      unless @address.nil?
        @address.destroy
        render json: {error: 'Address has been deleted'}
      else
        render json: {error: 'Address not Found!'}, status: 404
      end
    end
  
    private
    def address_params
        params.require(:address).permit(:name, :address_one, :address_two, :city, :state, :zip)
    end
    #user_id?

end
