class BusinessVerificationsController < ApplicationController

 def edit
  @business_verification = BusinessVerification.find(params[:id])
 end

 def update
  @business_verification = BusinessVerification.find(params[:id])

  respond_to do |format|
   if @business_verification.update_attributes(params[:business_verification])
      format.html { redirect_to @business_verification.business, notice: 'successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: "edit" }
      format.json { render json: @business_verification.errors, status: :unprocessable_entity }
    end
  end
 end

end
