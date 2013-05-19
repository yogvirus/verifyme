class CoApplicantBusinessesController < ApplicationController

 def create
  @co_applicant = CoApplicantBusiness.create(params[:co_applicant_business])
   if @co_applicant.save
    redirect_to customer_path(@co_applicant.co_applicant.customer), :notice => "'#{@co_applicant.applicant_name}'s business Details Added."
   else
    redirect_to @co_applicant.customer, :notice => "Something went wrong , please contact the administrator!."
 end
 end

 def show
  @co_applicant_business = CoApplicantBusiness.find(params[:id])
 end

 def business_verification
   @co_applicant = CoApplicantBusiness.find(params[:business_id])  
   @tab = Tab.find(:all) 
   @verification = ClientVerification.create(params[:client_verification])
    @verification.user_id = current_user.id
    @verification.co_applicant_business_id = @co_applicant.id
     if @verification.save
        @verification.co_applicant_business.submit!
        @user = User.find_by_role('super_user')
        #VerificationMailer.verification_confirmation(@user).deliver
        redirect_to @co_applicant, :notice =>"record has been send for verification"
    end
  end

  def accept
    @co_applicant_business = CoApplicantBusiness.find(params[:co_applicant_business_id])
    @co_applicant_business.accept!

    respond_to do |format|
       if @co_applicant_business.update_attributes(params[:co_applicant_business])
         format.html { redirect_to root_url, notice: 'Status was successfully updated.' }
         format.json { head :ok }
       else
         format.html { render action: "edit" }
         format.json { render json: @co_applicant_business.errors, status: :unprocessable_entity }
       end
     end
  end

  def re_indicated
   @co_applicant_business = CoApplicantBusiness.find(params[:co_applicant_business_id])
    @business.re_indicated!

    respond_to do |format|
       if @co_applicant_business.update_attributes(params[:co_applicant_business])
         format.html { redirect_to root_url, notice: 'Status was successfully updated.' }
         format.json { head :ok }
       else
         format.html { render action: "edit" }
         format.json { render json: @co_applicant_business.errors, status: :unprocessable_entity }
       end
     end
  end


end
