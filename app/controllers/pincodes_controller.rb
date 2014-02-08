class PincodesController < ApplicationController
  def index
   @pincodes = Pincode.all
  end

  def new
   @pincode = Pincode.new
  end

  def create
    @pincode = Pincode.create!(params[:pincode])   
     if @pincode.save
       redirect_to pincodes_path, :notice => "Successfully added."
     end
  end
 
end
