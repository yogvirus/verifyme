class ClientVerificationsController < ApplicationController

 def edit
  @co_applicant_business_verification = ClientVerification.find(params[:id])
 end

 def update
  @co_applicant_business_verification = ClientVerification.find(params[:id])

  respond_to do |format|
   if @co_applicant_business_verification.update_attributes(params[:client_verification])
      format.html { redirect_to @co_applicant_business_verification.co_applicant_business, notice: 'successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: "edit" }
      format.json { render json: @co_applicant_business_verification.errors, status: :unprocessable_entity }
    end
  end
 end

end
