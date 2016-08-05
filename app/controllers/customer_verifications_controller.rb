class CustomerVerificationsController < ApplicationController

 def edit
  @customer_verification = CustomerVerification.find(params[:id])
 end

 def update
  @customer_verification = CustomerVerification.find(params[:id])

  respond_to do |format|
   if @customer_verification.update_attributes(params[:customer_verification])
      format.html { redirect_to @customer_verification.customer, notice: 'successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: "edit" }
      format.json { render json: @customer_verification.errors, status: :unprocessable_entity }
    end
  end
 end
end
